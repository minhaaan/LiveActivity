//
//  RidingWidget.swift
//  RidingWidget
//
//  Created by 최민한 on 2022/08/16.
//

import WidgetKit
import SwiftUI

struct RidingActivityView: View {
  let context: ActivityViewContext<RidingAttributes>
  
  private var ridingFee: Int {
    return Int(abs(context.state.startTime.timeIntervalSince(Date()))) * 200
  }
  
  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        Text("이용시간")
          .font(.headline)
        Text(context.state.startTime, style: .timer)
      }
      HStack {
        Text("요금")
          .font(.headline)
        Text("\(ridingFee)")
      }
    }
    .padding(.horizontal)
  }
}

@main
struct RidingWidget: Widget {
    let kind: String = "RidingWidget"

    var body: some WidgetConfiguration {
      ActivityConfiguration(attributesType: RidingAttributes.self) { context in
        RidingActivityView(context: context)
      }
    }
}
