//
//  SecondAddVCCell.swift
//  Genome Calculator
//
//  Created by Can Balkaya on 3/23/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class AddVCCell: UITableViewCell {
    @IBOutlet weak var familyPersonNameLabel: UILabel!
    
    @IBOutlet weak var eyesTextField: UITextField!
    @IBOutlet weak var skinTextField: UITextField!
    @IBOutlet weak var hairTextField: UITextField!
    @IBOutlet weak var anemiaTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
