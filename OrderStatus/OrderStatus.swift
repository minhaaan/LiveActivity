//
//  OrderStatus.swift
//  OrderStatus
//
//  Created by 최민한 on 2022/08/06.
//

import WidgetKit
import SwiftUI
import Intents
import ActivityKit

@main
struct OrderStatus: Widget {
  
  var body: some WidgetConfiguration {
    ActivityConfiguration(attributesType: OrderAttributes.self) { context in
      // MARK: Live Activity View
      
      ZStack {
        Color.black
        HStack {
          Text("\(context.state.time)")
            .foregroundColor(.white)
            .padding(.leading, 20)
          Spacer()
          Text("요금: 1,500원")
            .foregroundColor(.white)
            .padding(.trailing, 20)
        }
      }
    }
  }
}
