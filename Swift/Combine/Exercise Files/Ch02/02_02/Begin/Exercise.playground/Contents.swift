/*:
# Chapter 2.2 - Publishers (Begin)
In Combine, **Publishers** distributes elements to one or more Subscribers that it accepts, through the extension of Operators, to create data event chains. In this video, Doron will go through the fundamentals of a Publisher, the protocol, functionality and purpose.
*/


import Foundation
import Combine


// (1) A simple publisher using Just, to produce once to each subscriber, before 💀
let _ = Just("Hello world!")
    .sink { (value) in
        print("Value is \(value)")
    }

// ------------------------------------------

// (2) Taking advantage of NotificationCenter's publisher
let notification = Notification(name: .NSSystemClockDidChange, object: nil, userInfo: nil)
let notificationClockPublisher = NotificationCenter.default.publisher(for: .NSSystemClockDidChange)
    .sink(receiveValue: { (value) in
        print("Value is \(value)")
    })
NotificationCenter.default.post(notification)
// ------------------------------------------

