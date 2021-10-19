//
//  ViewController.swift
//  TicketBookingandWeatherInformation
//
//  Created by Sean O'Dowd on 10/13/21.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    @IBOutlet weak var ticketButton: UIButton!
    
    @IBOutlet weak var weatherButton: UIButton!
    
    var layer1, layer2: CALayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        layer1 = ticketButton.layer
        layer1.borderColor = UIColor.white.cgColor
        layer1.borderWidth = 2
        layer1.cornerRadius = 5
        
        layer2 = weatherButton.layer
        layer2.borderColor = UIColor.yellow.cgColor
        layer2.borderWidth = 2
        layer2.cornerRadius = 5
    }

    @IBAction func ticketButtonClick() {
        
        
    }
    
    @IBAction func weatherButtonClick() {
        
        
    }
    
    
}

