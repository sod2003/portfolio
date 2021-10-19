//
//  TableViewController.swift
//  TicketBookingandWeatherInformation
//
//  Created by Sean O'Dowd on 10/13/21.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

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
    var cabs: [String] = []
    var cabsWeb: [String] = []
    var cabsImg: [String] = []
    
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
        cabs = ["Uber", "Lyft"]
        cabsWeb = ["http://www.uber.com", "http://www.lyft.com"]
        cabsImg = ["uber logo", "lyft logo.jpeg"]
    }
    
    @IBAction func nextButtonClick() {
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextScreen = segue.destination as! FinalTableViewController
        
        nextScreen.string1 = nameLabel.text
        nextScreen.string2 = webLabel.text
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            
            return airways.count
        } else if section == 1 {
            
            return railways.count
        } else if section == 2{
            
            return buses.count
        } else {
            
            return cabs.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "identifier1", for: indexPath)
        
        if indexPath.section == 0 {
            
            tableCell.textLabel?.text = airways[indexPath.row]
        } else if indexPath.section == 1 {
            
            tableCell.textLabel?.text = railways[indexPath.row]
        } else if indexPath.section == 2 {
            
            tableCell.textLabel?.text = buses[indexPath.row]
        } else {
            
            tableCell.textLabel?.text = cabs[indexPath.row]
        }
        
        tableCell.accessoryType = .detailDisclosureButton
        
        return tableCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            
            return "Airways"
        } else if section == 1 {
            
            return "Railways"
        } else if section == 2{
            
            return "Bus Tickets"
        } else {
            
            return "Cabs"
        }
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        
        let index = ["Airways", "Railsways", "Bus Tickets", "Cabs"]
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
        } else if index == 2 {
            
            nameLabel.text = buses[indexPath.row]
            webLabel.text = busesWeb[indexPath.row]
            iv1.image = UIImage(named: busesImg[indexPath.row])
        } else {
            
            nameLabel.text = cabs[indexPath.row]
            webLabel.text = cabsWeb[indexPath.row]
            iv1.image = UIImage(named: cabsImg[indexPath.row])
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
        } else if index == 2 {
            
            nameLabel.text = buses[indexPath.row]
            webLabel.text = busesWeb[indexPath.row]
            iv1.image = UIImage(named: busesImg[indexPath.row])
        } else {
            
            nameLabel.text = cabs[indexPath.row]
            webLabel.text = cabsWeb[indexPath.row]
            iv1.image = UIImage(named: cabsImg[indexPath.row])
        }
    }

}
