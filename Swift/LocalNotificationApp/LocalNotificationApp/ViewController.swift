//
//  ViewController.swift
//  LocalNotificationApp
//
//  Created by Sean O'Dowd on 10/7/21.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UNUserNotificationCenterDelegate {
    
    @IBOutlet weak var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Requesting for authorization
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
            
        })
        
    }

    @IBAction func button1Click() {
        
        //creating the notification content
        let content = UNMutableNotificationContent()

        //adding title, subtitle, body and badge
        // content.title = "ME UNIVERSITY"
        content.title = "MSRIT"
        content.subtitle = "Apple's iOS LAB"
        content.body = "We are learning about iOS Local Notification"
        content.badge = 1

        //getting the notification trigger
        //it will be called after 5 seconds
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

        //getting the notification request
        let request = UNNotificationRequest(identifier: "SimplifiedIOSNotification", content: content, trigger: trigger)

        UNUserNotificationCenter.current().delegate = self

        //adding the notification to notification center
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {

        //displaying the ios local notification when app is in foreground
        completionHandler([.banner, .badge, .sound])
    }
    
}

