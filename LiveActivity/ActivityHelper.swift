import Foundation
import ActivityKit

class ActivityHelper {
  
  var activity: Activity<OrderAttributes>?
  
  func add() {
    let orderAttributes = OrderAttributes(orderNumber: 1244, orderItems: "HI MINAN")
    let intialContentState = OrderAttributes.ContentState()
    
    do {
      activity = try Activity<OrderAttributes>.request(
        attributes: orderAttributes,
        contentState: intialContentState,
        pushType: nil
      )
      print("Activity Added Successfully. id: \(activity?.id)")
    } catch {
      print(error.localizedDescription)
    }
  }
  
  func update() {
    Task {
      let update = OrderAttributes.ContentState(time: "123")
      
      guard let activity else { return }
      
      await activity.update(using: update)
    }
  }
  
}


