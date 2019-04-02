//
//  SecondInputVCCell.swift
//  Genome Calculator
//
//  Created by Can Balkaya on 3/23/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class InputVCCell: UITableViewCell {
    @IBOutlet weak var familyPersonLabel: UILabel!
    
    @IBOutlet weak var eyesLabel: UILabel!
    @IBOutlet weak var skinLabel: UILabel!
    @IBOutlet weak var hairLabel: UILabel!
    @IBOutlet weak var anemiaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
