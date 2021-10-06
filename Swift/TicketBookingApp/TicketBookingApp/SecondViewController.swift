//
//  SecondViewController.swift
//  TicketBookingApp
//
//  Created by Sean O'Dowd on 10/6/21.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var webLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var airways: [String] = []
    var airwaysWeb: [String] = []
    var airwaysImg: [String] = []
    var railways: [String] = []
    var railwaysWeb: [String] = []
    var railwaysImg: [String] = []
    var buses: [String] = []
    var busesWeb: [String] = []
    var busesImg: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        airways = ["Delta", "United", "American"]
        airwaysWeb = ["http://www.delta.com", "http://www.united.com", "http://www.aa.com"]
        airwaysImg = ["delta logo", "united logo", "american logo.jpeg"]
        railways = ["Amtrak", "Marta"]
        railwaysWeb = ["http://www.amtrak.com", "http://www.itsmarta.com"]
        railwaysImg = ["amtrak logo", "marta logo"]
        buses = ["Greyhound"]
        busesWeb = ["http://www.greyhound.com"]
        busesImg = ["greyhound logo"]
    }
    
    @IBAction func nextButtonClick() {
        
        
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextScreen = segue.destination as! ThirdViewController
        
        nextScreen.string1 = nameLabel.text
        nextScreen.string2 = webLabel.text
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            
            return airways.count
        } else if section == 1 {
            
            return railways.count
        } else {
            
            return buses.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "identifier1", for: indexPath)
        
        if indexPath.section == 0 {
            
            tableCell.textLabel?.text = airways[indexPath.row]
            tableCell.accessoryType = .detailDisclosureButton
        } else if indexPath.section == 1 {
            
            tableCell.textLabel?.text = railways[indexPath.row]
            tableCell.accessoryType = .detailDisclosureButton
        } else {
            
            tableCell.textLabel?.text = buses[indexPath.row]
            tableCell.accessoryType = .detailDisclosureButton
        }
        
        return tableCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            
            return "Airways"
        } else if section == 1 {
            
            return "Railways"
        } else {
            
            return "Roadways"
        }
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        
        let index = ["Airways", "Railsways", "Roadways"]
        return index
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let index = indexPath.section
        if index == 0 {
            
            nameLabel.text = airways[indexPath.row]
            webLabel.text = airwaysWeb[indexPath.row]
            iv1.image = UIImage(named: airwaysImg[indexPath.row])
        } else if index == 1 {
            
            nameLabel.text = railways[indexPath.row]
            webLabel.text = railwaysWeb[indexPath.row]
            iv1.image = UIImage(named: railwaysImg[indexPath.row])
        } else {
            
            nameLabel.text = buses[indexPath.row]
            webLabel.text = busesWeb[indexPath.row]
            iv1.image = UIImage(named: busesImg[indexPath.row])
        }
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        
        let index = indexPath.section
        if index == 0 {
            
            nameLabel.text = airways[indexPath.row]
            webLabel.text = airwaysWeb[indexPath.row]
            iv1.image = UIImage(named: airwaysImg[indexPath.row])
        } else if index == 1 {
            
            nameLabel.text = railways[indexPath.row]
            webLabel.text = railwaysWeb[indexPath.row]
            iv1.image = UIImage(named: railwaysImg[indexPath.row])
        } else {
            
            nameLabel.text = buses[indexPath.row]
            webLabel.text = busesWeb[indexPath.row]
            iv1.image = UIImage(named: busesImg[indexPath.row])
        }
    }

}
