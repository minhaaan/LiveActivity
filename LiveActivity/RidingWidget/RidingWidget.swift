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
  
  var body: some View {
    VStack {
      Text("이용시간")
        .font(.headline)
        .foregroundColor(.blue)
      
      let a = Date(timeInterval: 0, since: Date())
//      Text("\(context.state.startTime.timeIntervalSince(Date()))")
//      Text(context.state.startTime, style: .relative)
      Text(a, style: .timer)
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
