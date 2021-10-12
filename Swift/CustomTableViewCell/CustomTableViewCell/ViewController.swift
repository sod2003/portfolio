//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Sean O'Dowd on 10/12/21.
//

import UIKit
import QuartzCore

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView1: UITableView!
    
    var layer1, layer2, layer3: CALayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView1.delegate = self
        tableView1.dataSource = self
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier1", for: indexPath) as! customTableViewCell
        
        cell.label1.text = "iOS App Training"
        
        layer1 = cell.label1.layer
        layer1.borderWidth = 3
        layer1.borderColor = UIColor.red.cgColor
        layer1.cornerRadius = 1
        
        cell.iv1.image = UIImage(named: "lion.jpg")
        layer2 = cell.iv1.layer
        layer2.borderWidth = 3
        layer2.borderColor = UIColor.black.cgColor
        layer2.cornerRadius = 3
        
        cell.tv1.text = "Welcome to the Jungle, baby!"
        layer3 = cell.tv1.layer
        layer3.borderWidth = 3
        layer3.borderColor = UIColor.blue.cgColor
        layer3.cornerRadius = 2
        
        return cell
    }


}

