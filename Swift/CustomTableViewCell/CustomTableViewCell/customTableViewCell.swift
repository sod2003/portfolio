//
//  customTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Sean O'Dowd on 10/12/21.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var countLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func stepperClick() {
        
        countLabel.text = String(Int(stepper.value))
    }
}
