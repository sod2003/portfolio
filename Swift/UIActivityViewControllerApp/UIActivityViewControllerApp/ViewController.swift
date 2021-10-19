//
//  ViewController.swift
//  UIActivityViewControllerApp
//
//  Created by Sean O'Dowd on 10/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    
    @IBOutlet weak var iv1: UIImageView!
    
    @IBOutlet weak var b1: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func b1Click() {
        
        let text = tf1.text
        
        let image: UIImage? = iv1.image
        
        let myWebsite = NSURL(string: tf2.text!)
        
        let shareAll = [text , image , myWebsite!] as [Any]

        let activityViewController = UIActivityViewController(activityItems: shareAll, applicationActivities: nil)

        activityViewController.popoverPresentationController?.sourceView = self.view

        self.present(activityViewController, animated: true, completion: nil)
    }
    
}

