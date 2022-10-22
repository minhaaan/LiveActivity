//
//  RidingAttributes.swift
//  LiveActivity
//
//  Created by 최민한 on 2022/08/16.
//

import SwiftUI
import WidgetKit
import ActivityKit


struct RidingAttributes: ActivityAttributes {
  public typealias TimerStatus = ContentState
  
  public struct ContentState: Codable, Hashable {
    var startTime: Date
  }
}
