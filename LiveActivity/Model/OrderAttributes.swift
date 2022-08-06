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
    var status: Status = .received
  }
  
  // MARK: Other Properties
  var orderNumber: Int
  var orderItems: String
}

enum Status: String, CaseIterable, Codable, Equatable {
  case received = "shippingbox.fill"
  case progress = "person.bust"
  case ready = "takeoutbag.and.cup.and.straw.fill"
}

