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
    }
  }
  
  
}
