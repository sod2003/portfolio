//
//  ViewController.swift
//  SocialFrameworkApp
//
//  Created by Sean O'Dowd on 10/7/21.
//

import UIKit
import Social

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var urlField: UITextField!
    
    @IBOutlet weak var iv1: UIImageView!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func b1Click() {
        
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook) {
            let facebookShare = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            if let facebookShare = facebookShare{
                facebookShare.setInitialText(nameField.text)
                facebookShare.add(iv1.image)
                facebookShare.add(URL(string: urlField.text!))
                self.present(facebookShare, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func b2Click() {
        
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
            let twitterShare = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            if let twitterShare = twitterShare{
                twitterShare.setInitialText(nameField.text)
                twitterShare.add(iv1.image)
                twitterShare.add(URL(string: urlField.text!))
                self.present(twitterShare, animated: true, completion: nil)
            }
        }
    }
    
}

