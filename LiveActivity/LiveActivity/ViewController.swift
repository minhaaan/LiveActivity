//
//  ViewController.swift
//  LiveActivity
//
//  Created by 최민한 on 2022/08/16.
//

import UIKit
import ActivityKit
import SwiftUI

final class ViewController: UIViewController {
  
  // MARK: Properties
  
  private let helper = Helper()
  
  private var updateTimer: Timer? = nil
  
  private let startButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("START", for: .normal)
    return button
  }()
  
  private let stopButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("STOP", for: .normal)
    return button
  }()
  
  private let updateButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("UPDATE", for: .normal)
    return button
  }()
  
  // MARK: LifeCycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setupLayout()
    setupGesture()
  }
  
  // MARK: Method
  
  private func setupGesture() {
    startButton.addTarget(self, action: #selector(startButtonDidTapped), for: .touchUpInside)
    stopButton.addTarget(self, action: #selector(stopButtonDidTapped), for: .touchUpInside)
    updateButton.addTarget(self, action: #selector(updateButtonDidTapped), for: .touchUpInside)
  }
  
  @objc private func startButtonDidTapped() {
    print("DEBUG: startButtonDidTapped")
    helper.add()
    
    updateTimer = Timer.scheduledTimer(
      timeInterval: 1,
      target: self,
      selector: #selector(update),
      userInfo: nil,
      repeats: true
    )
  }
  
  @objc private func stopButtonDidTapped() {
    print("DEBUG: stopButtonDidTapped")
    updateTimer?.invalidate()
    updateTimer = nil
    helper.stop()
  }
  
  @objc private func updateButtonDidTapped() {
    print("DEBUG: updateButtonDidTapped")
    helper.update()
  }
  
  @objc private func update() {
    print("DEBUG: 업데이트해따")
    helper.update()
  }
  
  
}

// MARK: Layout

extension ViewController {
  private func setupLayout() {
    view.backgroundColor = .white
    
    view.addSubview(startButton)
    view.addSubview(stopButton)
    view.addSubview(updateButton)
    
    startButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
    
    stopButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      stopButton.topAnchor.constraint(equalTo: startButton.bottomAnchor, constant: 20)
    ])
    
    updateButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      updateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      updateButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
    ])
  }
  
}
