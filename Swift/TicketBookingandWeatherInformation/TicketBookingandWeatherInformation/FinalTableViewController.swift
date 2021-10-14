//
//  FinalTableViewController.swift
//  TicketBookingandWeatherInformation
//
//  Created by Sean O'Dowd on 10/13/21.
//

import UIKit
import WebKit

class FinalTableViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    var barButton1: UIBarButtonItem!
    
    var string1: String!
    var string2: String!
    
    var url: URL!
    var urlRequest: URLRequest!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = string1
        
        barButton1 = UIBarButtonItem(title: "Home", style: .plain, target: self, action: #selector(homeButtonClick))
               
        self.navigationItem.rightBarButtonItem = barButton1
        
        url = URL(string: string2)
        urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
    
    @objc func homeButtonClick() {
        
        navigationController?.popToRootViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
