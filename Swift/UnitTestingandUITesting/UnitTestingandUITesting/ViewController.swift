//
//  ViewController.swift
//  UnitTestingandUITesting
//
//  Created by Sean O'Dowd on 10/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var b1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    func isStringLong( mystring: String) -> Bool {
        return mystring.count > 5
    }
    
    func isAddingTwoNumbers() -> Int {
        let x = 15
        let y = 5
        
        let z = x + y
        return z
    }

    @IBAction func b1Click() {
        
        
    }
    
}

