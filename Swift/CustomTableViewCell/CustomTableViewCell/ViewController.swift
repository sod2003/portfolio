//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Sean O'Dowd on 10/12/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView1: UITableView!
    
    var namesArray: [String] = []
    var imageArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView1.delegate = self
        tableView1.dataSource = self
        
        namesArray = ["Eggs", "Milk", "Bacon"]
        imageArray = ["egg.jpeg", "milk.jpeg", "bacon.jpeg"]
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier1", for: indexPath) as! customTableViewCell
        
        cell.label1.text = namesArray[indexPath.row]
        
        cell.iv1.image = UIImage(named: imageArray[indexPath.row])
        
        return cell
    }


}

