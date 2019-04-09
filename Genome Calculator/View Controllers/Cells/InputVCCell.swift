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

    @IBOutlet var eyesLabel: [UILabel]!
    @IBOutlet var skinLabel: [UILabel]!
    @IBOutlet var hairLabel: [UILabel]!
    @IBOutlet var anemiaLabel: [UILabel]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
