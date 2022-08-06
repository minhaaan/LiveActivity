//
//  OrderAttributes.swift
//  LiveActivity
//
//  Created by 최민한 on 2022/08/06.
//

import SwiftUI
import ActivityKit

struct OrderAttributes: ActivityAttributes {
  struct ContentState: Codable, Hashable {
    var time: String = "0시간 30초"
  }
  
  // MARK: Other Properties
  var orderNumber: Int
  var orderItems: String
}

