//
//  RidingWidget.swift
//  RidingWidget
//
//  Created by 최민한 on 2022/08/16.
//

import WidgetKit
import SwiftUI

@available(iOSApplicationExtension 16.1, *)
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
@available(iOSApplicationExtension 16.1, *)
struct RidingWidget: Widget {
  let kind: String = "RidingWidget"
  
  var body: some WidgetConfiguration {
    ActivityConfiguration(for: RidingAttributes.self) { context in
      RidingActivityView(context: context)
    } dynamicIsland: { context in
      DynamicIsland {
        // Create the expanded view.
        DynamicIslandExpandedRegion(.leading) {
          Text("leading")
        }
        
        DynamicIslandExpandedRegion(.trailing) {
          Text("trailing")
        }
        
        DynamicIslandExpandedRegion(.center) {
          Text("center")
        }
        
        DynamicIslandExpandedRegion(.bottom) {
          Text("bottom")
        }
      } compactLeading: {
        Text("cl")
      } compactTrailing: {
        Text("ct")
      } minimal: {
        Text("mim")
      }
    }
  }
}
