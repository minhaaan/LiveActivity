//
//  RidingWidget.swift
//  RidingWidget
//
//  Created by 최민한 on 2022/08/16.
//

import WidgetKit
import SwiftUI


struct RidingWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        Text(entry.date, style: .time)
    }
}

@main
struct RidingWidget: Widget {
    let kind: String = "RidingWidget"

    var body: some WidgetConfiguration {
      ActivityConfiguration(attributesType: <#T##_.Type#>) { context in
        
      }
    }
}
