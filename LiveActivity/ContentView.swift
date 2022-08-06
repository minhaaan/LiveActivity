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
  
  let helper: ActivityHelper = ActivityHelper()
  
  @State var a = 1
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
  var body: some View {
    NavigationStack {
      VStack {
        // MARK: Intializing Activity
        Button("Start Activity") {
          helper.add()
        }
        Button("update") {
          
        }.onReceive(timer) { input in
          
        }
      }
      .navigationTitle("Live Activities")
      .padding(15)
    }
  }
  
  func sub() {
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
