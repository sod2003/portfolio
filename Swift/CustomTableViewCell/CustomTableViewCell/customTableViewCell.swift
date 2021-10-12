//
//  customTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Sean O'Dowd on 10/12/21.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var tv1: UITextView!
    @IBOutlet weak var iv1: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
