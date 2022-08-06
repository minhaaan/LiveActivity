//
//  ContentView.swift
//  LiveActivity
//
//  Created by 최민한 on 2022/08/06.
//

import SwiftUI
import WidgetKit
import ActivityKit

struct ContentView: View {
    var body: some View {
      NavigationStack {
        VStack {
          // MARK: Intializing Activity
          Button("Start Activity") {
            addLiveActivity()
          }
        }
        .navigationTitle("Live Activities")
        .padding(15)
      }
    }
  
  func addLiveActivity() {
    let orderAttributes = OrderAttributes(orderNumber: 1244, orderItems: "HI MINAN")
    let intialContentState = OrderAttributes.ContentState()
    
    do {
      let activity = try Activity<OrderAttributes>.request(
        attributes: orderAttributes,
        contentState: intialContentState,
        pushType: nil
      )
      print("Activity Added Successfully. id: \(activity.id)")
    } catch {
      print(error.localizedDescription)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
