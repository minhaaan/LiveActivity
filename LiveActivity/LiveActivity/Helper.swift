//
//  Helper.swift
//  LiveActivity
//
//  Created by 최민한 on 2022/08/16.
//

import Foundation
import ActivityKit

final class Helper {
  
  var activity: Activity<RidingAttributes>?
  
  func add() {
    guard ActivityAuthorizationInfo().areActivitiesEnabled else {
      print("Activities are not enabled!")
      return
    }
    
    guard activity == nil else { return } // 이미 존재하는 경우 추가안함
    
    let attributes = RidingAttributes()
    let state = RidingAttributes.TimerStatus(
      startTime: Date().addingTimeInterval(0)
    )
    
    do {
      activity = try Activity<RidingAttributes>.request(
        attributes: attributes,
        contentState: state,
        pushType: nil
      )
    } catch {
      print("DEBUG: \(error.localizedDescription)")
    }
  }
  
  func stop() {
    let state = RidingAttributes.TimerStatus(startTime: .now)
    
    Task {
      await activity?.end(using: state, dismissalPolicy: .immediate)
      activity = nil
    }
  }
  
  func update() {
    Task {
      guard let startTime = activity?.contentState.startTime else { return }
      
      let updateState = RidingAttributes.TimerStatus(startTime: startTime)
      
      guard let activity else { return }
      
      await activity.update(using: updateState)
    }
  }
  
  
}
