//
//  ViewController.swift
//  CoreDataSwiftApp
//
//  Created by Sean O'Dowd on 10/5/21.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var findButton: UIButton!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func saveButtonClick() {
        
        // code to save details
        let context = appDelegate.persistentContainer.viewContext

        let entity = NSEntityDescription.entity(forEntityName: "PersonDetails", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)

        newUser.setValue(nameField.text, forKey: "name")
        newUser.setValue(addressField.text, forKey: "address")
        newUser.setValue(numberField.text, forKey: "phoneNumber")
        newUser.setValue(emailField.text, forKey: "email")

        do {
            try context.save()
            nameField.text = ""
            addressField.text = ""
            numberField.text = ""
            emailField.text = ""

            label1.text = "Contact Saved"

        } catch {
            print("Failed saving")

            label1.text = "Failed Contact Saved"
        }
    }
    
    @IBAction func findButtonClick() {
        
        // code to retrive the data from Core Data file

        let context = appDelegate.persistentContainer.viewContext

        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PersonDetails")

        request.predicate = NSPredicate(format: "name=%@",nameField.text!)
        // request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {


            addressField.text = data.value(forKey: "address") as? String
            numberField.text = data.value(forKey: "phoneNumber") as? String
            emailField.text = data.value(forKey: "email") as? String

            label1.text = "Matches found: \(result.count)"


            }

        } catch {

            print("Failed")
            label1.text = "Failed to retrive information"
        }
    }
    
    
}

