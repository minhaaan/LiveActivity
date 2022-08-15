//
//  ViewController.swift
//  LiveActivity
//
//  Created by 최민한 on 2022/08/16.
//

import UIKit

final class ViewController: UIViewController {
  
  // MARK: Properties
  
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
  
  // MARK: LifeCycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setupLayout()
    setupGesture()
  }
  
  // MARK: Method
  
  private func setupGesture() {
    startButton.addTarget(nil, action: #selector(startButtonDidTapped), for: .touchUpInside)
    stopButton.addTarget(nil, action: #selector(stopButtonDidTapped), for: .touchUpInside)
  }
  
  @objc private func startButtonDidTapped() {
    print("DEBUG: startButtonDidTapped")
  }
  
  @objc private func stopButtonDidTapped() {
    print("DEBUG: stopButtonDidTapped")
  }
  
}

// MARK: Layout

extension ViewController {
  private func setupLayout() {
    view.backgroundColor = .white
    
    view.addSubview(startButton)
    view.addSubview(stopButton)
    
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
  }
  
}
