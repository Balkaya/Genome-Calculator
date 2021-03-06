//
//  İnputVC.swift
//  Genome Calculator
//
//  Created by Can Balkaya on 11/19/18.
//  Copyright © 2018 Can Balkaya. All rights reserved.
//

import UIKit
import CoreData

class InputVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var inputTextView: UITextView!
    
    var name = ""
    var secondEyesTexts: [String] = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    var secondSkinTexts: [String] = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    var secondHairTexts: [String] = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    var secondAnemiaTexts: [String] = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    
    var personsCases: [Bool] = [false, false, false, false, false, false, false, false, false, false, false, false, false, false]
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationVC = segue.destination as! ContainerVC
//        destinationVC.nameText = name
//        destinationVC.eyesTexts = secondEyesTexts
//        destinationVC.skinTexts = secondSkinTexts
//        destinationVC.hairTexts = secondHairTexts
//        destinationVC.anemiaTexts = secondAnemiaTexts
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
//        secondEyesTexts[0] = firstText
//        secondSkinTexts[0] = secondText
//        secondHairTexts[0] = thirdText
//        secondAnemiaTexts[0] = fourthText
//        secondEyesTexts[1] = fifthText
//        secondSkinTexts[1] = sixthText
//        secondHairTexts[1] = seventhText
//        secondAnemiaTexts[1] = eighthText
//        secondEyesTexts[2] = ninthText
//        secondSkinTexts[2] = tenthText
//        secondHairTexts[2] = eleventhText
//        secondAnemiaTexts[2] = twelfthText
//        secondEyesTexts[3] = thirteenthText
//        secondSkinTexts[3] = fourteenthText
//        secondHairTexts[3] = fifteenthText
//        secondAnemiaTexts[3] = sixteenthText
//        secondEyesTexts[4] = seventeenthText
//        secondSkinTexts[4] = eighteenthText
//        secondHairTexts[4] = ninteenthText
//        secondAnemiaTexts[4]  = twentiethText
//        secondEyesTexts[5] = twentyFirstText
//        secondSkinTexts[5] = twentySecondText
//        secondHairTexts[5] = twentyThirdText
//        secondAnemiaTexts[5] = twentyFourthText
//        secondEyesTexts[6] = twentyFifthText
//        secondSkinTexts[6] = twentySixthText
//        secondHairTexts[6] = twentySeventhText
//        secondAnemiaTexts[6] = twentyEighthText
//        secondEyesTexts[7] = twentyNinthText
//        secondSkinTexts[7] = thirtiethText
//        secondHairTexts[7] = thirtyFirstText
//        secondAnemiaTexts[7] = thirtySecondText
//        secondEyesTexts[8] = thirtyThirdText
//        secondSkinTexts[8] = thirtyFourthText
//        secondHairTexts[8] = thirtyFifthText
//        secondAnemiaTexts[8] = thirtySixthText
//        secondEyesTexts[9] = thirtySeventhText
//        secondSkinTexts[9] = thirtyEightText
//        secondHairTexts[9] = thirtyNinthText
//        secondAnemiaTexts[9] = fortiethText
//        secondEyesTexts[10] = fourtyFirstText
//        secondSkinTexts[10] = fourtySecondText
//        secondHairTexts[10] = fourtyThirdText
//        secondAnemiaTexts[10] = fourtyFourthText
//        secondEyesTexts[11] = fourtyFifthText
//        secondSkinTexts[11] = fourtySixthText
//        secondHairTexts[11] = fourtySeventhText
//        secondAnemiaTexts[11] = fourtyEighthText
//        secondEyesTexts[12] = fourtyNinthText
//        secondSkinTexts[12] = fiftiethText
//        secondHairTexts[12] = fiftyFirstText
//        secondAnemiaTexts[12] = fiftySecondText
//        secondEyesTexts[13] = fiftyThirdText
//        secondSkinTexts[13] = fiftyFourthText
//        secondHairTexts[13] = fiftyFifthText
//        secondAnemiaTexts[13] = fiftySixthText
        
        if secondEyesTexts[0] == eyesColors[0] {
            blackEyes += 1.0
        } else if secondEyesTexts[0] == eyesColors[1] {
            dBrownEyes += 1.0
        } else if secondEyesTexts[0] == eyesColors[2] {
            brownEyes += 1.0
        } else if secondEyesTexts[0] == eyesColors[3] {
            lBrownEyes += 1.0
        } else if secondEyesTexts[0] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 1.0
        } else if secondEyesTexts[0] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 1.0
        } else if secondEyesTexts[0] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 1.0
        }
        
        if secondSkinTexts[0] == skinColors[0] {
            blackSkin += 1.0
        } else if secondSkinTexts[0] == skinColors[1] {
            dBrownSkin += 1.0
        } else if secondSkinTexts[0] == skinColors[2] {
            brownSkin += 1.0
        } else if secondSkinTexts[0] == skinColors[3] {
            lBrownSkin += 1.0
        } else if secondSkinTexts[0] == skinColors[4] {
            whiteSkin += 1.0
        }
        
        if secondHairTexts[0] == hairColors[0] {
            blackHair += 1
        } else if secondHairTexts[0] == hairColors[1] {
            dBrownHair += 1
        } else if secondHairTexts[0] == hairColors[2] {
            brownHair += 1
        } else if secondHairTexts[0] == hairColors[3] {
            lBrownHair += 1
        } else if secondHairTexts[0] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 1
        } else if secondHairTexts[0] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 1
        } else if secondHairTexts[0] == hairColors[6] {
            redsPoints += 1
            redHair += 1
        }
        
        if secondAnemiaTexts[0] == anemiaCases[0] {
            personsCases[0] = true
        } else if secondAnemiaTexts[0] == anemiaCases[1] {
            personsCases[0] = false
        }
        
        if secondEyesTexts[1] == eyesColors[0] {
            blackEyes += 1.0
        } else if secondEyesTexts[1] == eyesColors[1] {
            dBrownEyes += 1.0
        } else if secondEyesTexts[1] == eyesColors[2] {
            brownEyes += 1.0
        } else if secondEyesTexts[1] == eyesColors[3] {
            lBrownEyes += 1.0
        } else if secondEyesTexts[1] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 1.0
        } else if secondEyesTexts[1] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 1.0
        } else if secondEyesTexts[1] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 1.0
        }
        
        if secondSkinTexts[1] == skinColors[0] {
            blackSkin += 1.0
        } else if secondSkinTexts[1] == skinColors[1] {
            dBrownSkin += 1.0
        } else if secondSkinTexts[1] == skinColors[2] {
            brownSkin += 1.0
        } else if secondSkinTexts[1] == skinColors[3] {
            lBrownSkin += 1.0
        } else if secondSkinTexts[1] == skinColors[4] {
            whiteSkin += 1.0
        }
        
        if secondHairTexts[1] == hairColors[0] {
            blackHair += 1
        } else if secondHairTexts[1] == hairColors[1] {
            dBrownHair += 1
        } else if secondHairTexts[1] == hairColors[2] {
            brownHair += 1
        } else if secondHairTexts[1] == hairColors[3] {
            lBrownHair += 1
        } else if secondHairTexts[1] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 1
        } else if secondHairTexts[1] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 1
        } else if secondHairTexts[1] == hairColors[6] {
            redsPoints += 1
            redHair += 1
        }
        
        if secondAnemiaTexts[1] == anemiaCases[0] {
            personsCases[1] = true
        } else if secondAnemiaTexts[1] == anemiaCases[1] {
            personsCases[1] = false
        }
        
        if secondEyesTexts[2] == eyesColors[0] {
            blackEyes += 0.5
        } else if secondEyesTexts[2] == eyesColors[1] {
            dBrownEyes += 0.5
        } else if secondEyesTexts[2] == eyesColors[2] {
            brownEyes += 0.5
        } else if secondEyesTexts[2] == eyesColors[3] {
            lBrownEyes += 0.5
        } else if secondEyesTexts[2] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.5
        } else if secondEyesTexts[2] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.5
        } else if secondEyesTexts[2] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.5
        }
        
        if secondSkinTexts[2] == skinColors[0] {
            blackSkin += 0.5
        } else if secondSkinTexts[2] == skinColors[1] {
            dBrownSkin += 0.5
        } else if secondSkinTexts[2] == skinColors[2] {
            brownSkin += 0.5
        } else if secondSkinTexts[2] == skinColors[3] {
            lBrownSkin += 0.5
        } else if secondSkinTexts[2] == skinColors[4] {
            whiteSkin += 0.5
        }
        
        if secondHairTexts[2] == hairColors[0] {
            blackHair += 0.5
        } else if secondHairTexts[2] == hairColors[1] {
            dBrownHair += 0.5
        } else if secondHairTexts[2] == hairColors[2] {
            brownHair += 0.5
        } else if secondHairTexts[2] == hairColors[3] {
            lBrownHair += 0.5
        } else if secondHairTexts[2] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.5
        } else if secondHairTexts[2] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.5
        } else if secondHairTexts[2] == hairColors[6] {
            redsPoints += 1
            redHair += 0.5
        }
        
        if secondAnemiaTexts[2] == anemiaCases[0] {
            personsCases[2] = true
        } else if secondAnemiaTexts[2] == anemiaCases[1] {
            personsCases[2] = false
        }
        
        if secondEyesTexts[3] == eyesColors[0] {
            blackEyes += 0.5
        } else if secondEyesTexts[3] == eyesColors[1] {
            dBrownEyes += 0.5
        } else if secondEyesTexts[3] == eyesColors[2] {
            brownEyes += 0.5
        } else if secondEyesTexts[3] == eyesColors[3] {
            lBrownEyes += 0.5
        } else if secondEyesTexts[3] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.5
        } else if secondEyesTexts[3] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.5
        } else if secondEyesTexts[3] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.5
        }
        
        if secondSkinTexts[3] == skinColors[0] {
            blackSkin += 0.5
        } else if secondSkinTexts[3] == skinColors[1] {
            dBrownSkin += 0.5
        } else if secondSkinTexts[3] == skinColors[2] {
            brownSkin += 0.5
        } else if secondSkinTexts[3] == skinColors[3] {
            lBrownSkin += 0.5
        } else if secondSkinTexts[3] == skinColors[4] {
            whiteSkin += 0.5
        }
        
        if secondHairTexts[3] == hairColors[0] {
            blackHair += 0.5
        } else if secondHairTexts[3] == hairColors[1] {
            dBrownHair += 0.5
        } else if secondHairTexts[3] == hairColors[2] {
            brownHair += 0.5
        } else if secondHairTexts[3] == hairColors[3] {
            lBrownHair += 0.5
        } else if secondHairTexts[3] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.5
        } else if secondHairTexts[3] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.5
        } else if secondHairTexts[3] == hairColors[6] {
            redsPoints += 1
            redHair += 0.5
        }
        
        if secondAnemiaTexts[3] == anemiaCases[0] {
            personsCases[3] = true
        } else if secondAnemiaTexts[3] == anemiaCases[1] {
            personsCases[3] = false
        }
        
        if secondEyesTexts[4] == eyesColors[0] {
            blackEyes += 0.5
        } else if secondEyesTexts[4] == eyesColors[1] {
            dBrownEyes += 0.5
        } else if secondEyesTexts[4] == eyesColors[2] {
            brownEyes += 0.5
        } else if secondEyesTexts[4] == eyesColors[3] {
            lBrownEyes += 0.5
        } else if secondEyesTexts[4] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.5
        } else if secondEyesTexts[4] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.5
        } else if secondEyesTexts[4] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.5
        }
        
        if secondSkinTexts[4] == skinColors[0] {
            blackSkin += 0.5
        } else if secondSkinTexts[4] == skinColors[1] {
            dBrownSkin += 0.5
        } else if secondSkinTexts[4] == skinColors[2] {
            brownSkin += 0.5
        } else if secondSkinTexts[4] == skinColors[3] {
            lBrownSkin += 0.5
        } else if secondSkinTexts[4] == skinColors[4] {
            whiteSkin += 0.5
        }
        
        if secondEyesTexts[4] == hairColors[0] {
            blackHair += 0.5
        } else if secondEyesTexts[4] == hairColors[1] {
            dBrownHair += 0.5
        } else if secondEyesTexts[4] == hairColors[2] {
            brownHair += 0.5
        } else if secondEyesTexts[4] == hairColors[3] {
            lBrownHair += 0.5
        } else if secondEyesTexts[4] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.5
        } else if secondEyesTexts[4] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.5
        } else if secondEyesTexts[4] == hairColors[6] {
            redsPoints += 1
            redHair += 0.5
        }
        
        if secondAnemiaTexts[4] == anemiaCases[0] {
            personsCases[4] = true
        } else if secondAnemiaTexts[4] == anemiaCases[1] {
            personsCases[4] = false
        }
        
        if secondEyesTexts[5] == eyesColors[0] {
            blackEyes += 0.5
        } else if secondEyesTexts[5] == eyesColors[1] {
            dBrownEyes += 0.5
        } else if secondEyesTexts[5] == eyesColors[2] {
            brownEyes += 0.5
        } else if secondEyesTexts[5] == eyesColors[3] {
            lBrownEyes += 0.5
        } else if secondEyesTexts[5] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.5
        } else if secondEyesTexts[5] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.5
        } else if secondEyesTexts[5] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.5
        }
        
        if secondSkinTexts[5] == skinColors[0] {
            blackSkin += 0.5
        } else if secondSkinTexts[5] == skinColors[1] {
            dBrownSkin += 0.5
        } else if secondSkinTexts[5] == skinColors[2] {
            brownSkin += 0.5
        } else if secondSkinTexts[5] == skinColors[3] {
            lBrownSkin += 0.5
        } else if secondSkinTexts[5] == skinColors[4] {
            whiteSkin += 0.5
        }
        
        if secondHairTexts[5] == hairColors[0] {
            blackHair += 0.5
        } else if secondHairTexts[5] == hairColors[1] {
            dBrownHair += 0.5
        } else if secondHairTexts[5] == hairColors[2] {
            brownHair += 0.5
        } else if secondHairTexts[5] == hairColors[3] {
            lBrownHair += 0.5
        } else if secondHairTexts[5] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.5
        } else if secondHairTexts[5] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.5
        } else if secondHairTexts[5] == hairColors[6] {
            redsPoints += 1
            redHair += 0.5
        }
        
        if secondAnemiaTexts[5] == anemiaCases[0] {
            personsCases[5] = true
        } else if secondAnemiaTexts[5] == anemiaCases[1] {
            personsCases[5] = false
        }
        
        if secondEyesTexts[6] == eyesColors[0] {
            blackEyes += 0.25
        } else if secondEyesTexts[6] == eyesColors[1] {
            dBrownEyes += 0.25
        } else if secondEyesTexts[6] == eyesColors[2] {
            brownEyes += 0.25
        } else if secondEyesTexts[6] == eyesColors[3] {
            lBrownEyes += 0.25
        } else if secondEyesTexts[6] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.25
        } else if secondEyesTexts[6] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if secondEyesTexts[6] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if secondSkinTexts[6] == skinColors[0] {
            blackSkin += 0.25
        } else if secondSkinTexts[6] == skinColors[1] {
            dBrownSkin += 0.25
        } else if secondSkinTexts[6] == skinColors[2] {
            brownSkin += 0.25
        } else if secondSkinTexts[6] == skinColors[3] {
            lBrownSkin += 0.25
        } else if secondSkinTexts[6] == skinColors[4] {
            whiteSkin += 0.25
        }
        
        if secondHairTexts[6] == hairColors[0] {
            blackHair += 0.5
        } else if secondHairTexts[6] == hairColors[1] {
            dBrownHair += 0.5
        } else if secondHairTexts[6] == hairColors[2] {
            brownHair += 0.5
        } else if secondHairTexts[6] == hairColors[3] {
            lBrownHair += 0.5
        } else if secondHairTexts[6] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.5
        } else if secondHairTexts[6] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.5
        } else if secondHairTexts[6] == hairColors[6] {
            redsPoints += 1
            redHair += 0.5
        }
        
        if secondAnemiaTexts[6] == anemiaCases[0] {
            personsCases[6] = true
        } else if secondAnemiaTexts[6] == anemiaCases[1] {
            personsCases[6] = false
        }
        
        if secondEyesTexts[7] == eyesColors[0] {
            blackEyes += 0.25
        } else if secondEyesTexts[7] == eyesColors[1] {
            dBrownEyes += 0.25
        } else if secondEyesTexts[7] == eyesColors[2] {
            brownEyes += 0.25
        } else if secondEyesTexts[7] == eyesColors[3] {
            lBrownEyes += 0.25
        } else if secondEyesTexts[7] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.25
        } else if secondEyesTexts[7] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if secondEyesTexts[7] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if secondSkinTexts[7] == skinColors[0] {
            blackSkin += 0.25
        } else if secondSkinTexts[7] == secondSkinTexts[1] {
            dBrownSkin += 0.25
        } else if secondSkinTexts[7] == secondSkinTexts[2] {
            brownSkin += 0.25
        } else if secondSkinTexts[7] == secondSkinTexts[3] {
            lBrownSkin += 0.25
        } else if secondSkinTexts[7] == secondSkinTexts[4] {
            whiteSkin += 0.25
        }
        
        if secondHairTexts[7] == hairColors[0] {
            blackHair += 0.25
        } else if secondHairTexts[7] == hairColors[1] {
            dBrownHair += 0.25
        } else if secondHairTexts[7] == hairColors[2] {
            brownHair += 0.25
        } else if secondHairTexts[7] == hairColors[3] {
            lBrownHair += 0.25
        } else if secondHairTexts[7] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if secondHairTexts[7] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if secondHairTexts[7] == hairColors[6] {
            redsPoints += 1
            redHair += 0.25
        }
        
        if secondAnemiaTexts[7] == anemiaCases[0] {
            personsCases[7] = true
        } else if secondAnemiaTexts[7] == anemiaCases[1] {
            personsCases[7] = false
        }
        
        if secondEyesTexts[8] == eyesColors[0] {
            blackEyes += 0.25
        } else if secondEyesTexts[8] == eyesColors[1] {
            dBrownEyes += 0.25
        } else if secondEyesTexts[8] == eyesColors[2] {
            brownEyes += 0.25
        } else if secondEyesTexts[8] == eyesColors[3] {
            lBrownEyes += 0.25
        } else if secondEyesTexts[8] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.25
        } else if secondEyesTexts[8] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if secondEyesTexts[8] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if secondSkinTexts[8] == skinColors[0] {
            blackSkin += 0.25
        } else if secondSkinTexts[8] == skinColors[1] {
            dBrownSkin += 0.25
        } else if secondSkinTexts[8] == skinColors[2] {
            brownSkin += 0.25
        } else if secondSkinTexts[8] == skinColors[3] {
            lBrownSkin += 0.25
        } else if secondSkinTexts[8] == skinColors[4] {
            whiteSkin += 0.25
        }
        
        if secondHairTexts[8] == hairColors[0] {
            blackHair += 0.25
        } else if secondHairTexts[8] == hairColors[1] {
            dBrownHair += 0.25
        } else if secondHairTexts[8] == hairColors[2] {
            brownHair += 0.25
        } else if secondHairTexts[8] == hairColors[3] {
            lBrownHair += 0.25
        } else if secondHairTexts[8] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if secondHairTexts[8] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if secondHairTexts[8] == hairColors[6] {
            redsPoints += 1
            redHair += 0.25
        }
        
        if secondAnemiaTexts[8] == anemiaCases[0] {
            personsCases[8] = true
        } else if secondAnemiaTexts[8] == anemiaCases[1] {
            personsCases[8] = false
        }
        
        if secondEyesTexts[9] == eyesColors[0] {
            blackEyes += 0.25
        } else if secondEyesTexts[9] == eyesColors[1] {
            dBrownEyes += 0.25
        } else if secondEyesTexts[9] == eyesColors[2] {
            brownEyes += 0.25
        } else if secondEyesTexts[9] == eyesColors[3] {
            lBrownEyes += 0.25
        } else if secondEyesTexts[9] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.25
        } else if secondEyesTexts[9] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if secondEyesTexts[9] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if secondSkinTexts[9] == skinColors[0] {
            blackSkin += 0.25
        } else if secondSkinTexts[9] == skinColors[1] {
            dBrownSkin += 0.25
        } else if secondSkinTexts[9] == skinColors[2] {
            brownSkin += 0.25
        } else if secondSkinTexts[9] == skinColors[3] {
            lBrownSkin += 0.25
        } else if secondSkinTexts[9] == skinColors[4] {
            whiteSkin += 0.25
        }
        
        if secondHairTexts[9] == hairColors[0] {
            blackHair += 0.25
        } else if secondHairTexts[9] == hairColors[1] {
            dBrownHair += 0.25
        } else if secondHairTexts[9] == hairColors[2] {
            brownHair += 0.25
        } else if secondHairTexts[9] == hairColors[3] {
            lBrownHair += 0.25
        } else if secondHairTexts[9] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if secondHairTexts[9] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if secondHairTexts[9] == hairColors[6] {
            redsPoints += 1
            redHair += 0.25
        }
        
        if secondAnemiaTexts[9] == anemiaCases[0] {
            personsCases[9] = true
        } else if secondAnemiaTexts[9] == anemiaCases[1] {
            personsCases[9] = false
        }
        
        if secondEyesTexts[10] == eyesColors[0] {
            blackEyes += 0.25
        } else if secondEyesTexts[10] == eyesColors[1] {
            dBrownEyes += 0.25
        } else if secondEyesTexts[10] == eyesColors[2] {
            brownEyes += 0.25
        } else if secondEyesTexts[10] == eyesColors[3] {
            lBrownEyes += 0.25
        } else if secondEyesTexts[10] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.25
        } else if secondEyesTexts[10] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if secondEyesTexts[10] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if secondSkinTexts[10] == skinColors[0] {
            blackSkin += 0.25
        } else if secondSkinTexts[10] == skinColors[1] {
            dBrownSkin += 0.25
        } else if secondSkinTexts[10] == skinColors[2] {
            brownSkin += 0.25
        } else if secondSkinTexts[10] == skinColors[3] {
            lBrownSkin += 0.25
        } else if secondSkinTexts[10] == skinColors[4] {
            whiteSkin += 0.25
        }
        
        if secondHairTexts[10] == hairColors[0] {
            blackHair += 0.25
        } else if secondHairTexts[10] == hairColors[1] {
            dBrownHair += 0.25
        } else if secondHairTexts[10] == hairColors[2] {
            brownHair += 0.25
        } else if secondHairTexts[10] == hairColors[3] {
            lBrownHair += 0.25
        } else if secondHairTexts[10] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if secondHairTexts[10] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if secondHairTexts[10] == hairColors[6] {
            redsPoints += 1
            redHair += 0.25
        }
        
        if secondAnemiaTexts[10] == anemiaCases[0] {
            personsCases[10] = true
        } else if secondAnemiaTexts[10] == anemiaCases[1] {
            personsCases[10] = false
        }
        
        if secondEyesTexts[11] == eyesColors[0] {
            blackEyes += 0.25
        } else if secondEyesTexts[11] == eyesColors[1] {
            dBrownEyes += 0.25
        } else if secondEyesTexts[11] == eyesColors[2] {
            brownEyes += 0.25
        } else if secondEyesTexts[11] == eyesColors[3] {
            lBrownEyes += 0.25
        } else if secondEyesTexts[11] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.25
        } else if secondEyesTexts[11] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if secondEyesTexts[11] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if secondSkinTexts[11] == skinColors[0] {
            blackSkin += 0.25
        } else if secondSkinTexts[11] == skinColors[1] {
            dBrownSkin += 0.25
        } else if secondSkinTexts[11] == skinColors[2] {
            brownSkin += 0.25
        } else if secondSkinTexts[11] == skinColors[3] {
            lBrownSkin += 0.25
        } else if secondSkinTexts[11] == skinColors[4] {
            whiteSkin += 0.25
        }
        
        if secondHairTexts[11] == hairColors[0] {
            blackHair += 0.25
        } else if secondHairTexts[11] == hairColors[1] {
            dBrownHair += 0.25
        } else if secondHairTexts[11] == hairColors[2] {
            brownHair += 0.25
        } else if secondHairTexts[11] == hairColors[3] {
            lBrownHair += 0.25
        } else if secondHairTexts[11] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if secondHairTexts[11] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if secondHairTexts[11] == hairColors[6] {
            redsPoints += 1
            redHair += 0.25
        }
        
        if secondAnemiaTexts[11] == anemiaCases[0] {
            personsCases[11] = true
        } else if secondAnemiaTexts[11] == anemiaCases[1] {
            personsCases[11] = false
        }
        
        if secondEyesTexts[12] == eyesColors[0] {
            blackEyes += 0.25
        } else if secondEyesTexts[12] == eyesColors[1] {
            dBrownEyes += 0.25
        } else if secondEyesTexts[12] == eyesColors[2] {
            brownEyes += 0.25
        } else if secondEyesTexts[12] == eyesColors[3] {
            lBrownEyes += 0.25
        } else if secondEyesTexts[12] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.25
        } else if secondEyesTexts[12] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if secondEyesTexts[12] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if secondSkinTexts[12] == skinColors[0] {
            blackSkin += 0.25
        } else if secondSkinTexts[12] == skinColors[1] {
            dBrownSkin += 0.25
        } else if secondSkinTexts[12] == skinColors[2] {
            brownSkin += 0.25
        } else if secondSkinTexts[12] == skinColors[3] {
            lBrownSkin += 0.25
        } else if secondSkinTexts[12] == skinColors[4] {
            whiteSkin += 0.25
        }
        
        if secondHairTexts[12] == hairColors[0] {
            blackHair += 0.25
        } else if secondHairTexts[12] == hairColors[1] {
            dBrownHair += 0.25
        } else if secondHairTexts[12] == hairColors[2] {
            brownHair += 0.25
        } else if secondHairTexts[12] == hairColors[3] {
            lBrownHair += 0.25
        } else if secondHairTexts[12] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if secondHairTexts[12] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if secondHairTexts[12] == hairColors[6] {
            redsPoints += 1
            redHair += 0.25
        }
        
        if secondAnemiaTexts[12] == anemiaCases[0] {
            personsCases[12] = true
        } else if secondAnemiaTexts[12] == anemiaCases[1] {
            personsCases[12] = false
        }
        
        if secondEyesTexts[13] == eyesColors[0] {
            blackEyes += 0.25
        } else if secondEyesTexts[13] == eyesColors[1] {
            dBrownEyes += 0.25
        } else if secondEyesTexts[13] == eyesColors[2] {
            brownEyes += 0.25
        } else if secondEyesTexts[13] == eyesColors[3] {
            lBrownEyes += 0.25
        } else if secondEyesTexts[13] == eyesColors[4] {
            greensPoints += 1
            greenEyes += 0.25
        } else if secondEyesTexts[13] == eyesColors[5] {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if secondEyesTexts[13] == eyesColors[6] {
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if secondSkinTexts[13] == skinColors[0] {
            blackSkin += 0.25
        } else if secondSkinTexts[13] == skinColors[1] {
            dBrownSkin += 0.25
        } else if secondSkinTexts[13] == skinColors[2] {
            brownSkin += 0.25
        } else if secondSkinTexts[13] == skinColors[3] {
            lBrownSkin += 0.25
        } else if secondSkinTexts[13] == skinColors[4] {
            whiteSkin += 0.25
        }
        
        if secondAnemiaTexts[13] == hairColors[0] {
            blackHair += 0.25
        } else if secondAnemiaTexts[13] == hairColors[1] {
            dBrownHair += 0.25
        } else if secondAnemiaTexts[13] == hairColors[2] {
            brownHair += 0.25
        } else if secondAnemiaTexts[13] == hairColors[3] {
            lBrownHair += 0.25
        } else if secondAnemiaTexts[13] == hairColors[4] {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if secondAnemiaTexts[13] == hairColors[5] {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if secondAnemiaTexts[13] == hairColors[6] {
            redsPoints += 1
            redHair += 0.25
        }
        
        if secondAnemiaTexts[13] == anemiaCases[0] {
            personsCases[13] = true
        } else if secondAnemiaTexts[13] == anemiaCases[1] {
            personsCases[13] = false
        }
        
        let eyesValue = Double(((blackEyes * forBlackEyes) + (dBrownEyes * forDBrownEyes) + (brownEyes * forBrownEyes) + (lBrownEyes * forLBrownEyes) + (greenEyes * forGreenEyes) + (hazelEyes * forHazelEyes) + (blueEyes * forBlueEyes)) / (blackEyes + dBrownEyes + brownEyes + lBrownEyes + greenEyes + hazelEyes + blueEyes))
        
        let skinValue = Double(((blackSkin * forBlackSkin) + (dBrownSkin * forDBrownSkin) + (brownSkin * forBrownSkin) + (lBrownSkin * forLBrownSkin) + (whiteSkin * forWhiteSkin)) / (blackSkin + dBrownSkin + brownSkin + lBrownSkin + whiteSkin))
        
        let hairValue = Double(((blackHair * forBlackHair) + (dBrownHair * forDBrownHair) + (brownHair * forBrownHair) + (lBrownHair * forLBrownHair) + (auburnHair * forAuburnHair) + (yellowHair * forYellowHair) + (redHair * forRedHair)) / (blackHair + dBrownHair + brownHair + lBrownHair + auburnHair + yellowHair + redHair))
        
        print("Eyes value: \(eyesValue)")
        print("Skin value: \(skinValue)")
        print("Hair value: \(hairValue)")
        
        print("Green points: \(greensPoints)")
        print("Hazel points: \(hazelsPoints)")
        print("Blue points: \(bluesPoints)")
        
        print("Auburn points: \(auburnsPoints)")
        print("Yellow points: \(yellowsPoints)")
        print("Red points: \(yellowsPoints)")
        
        if eyesValue == 1.0 {
            if greensPoints > hazelsPoints && greensPoints > bluesPoints {
                biggestForEyes = (greensPoints * 100) / 14
                firstEyesColorName = "Green"
                firstCase = 1
            } else if hazelsPoints > greensPoints && hazelsPoints > bluesPoints {
                biggestForEyes = (hazelsPoints * 100) / 14
                firstEyesColorName = "Hazel"
                firstCase = 1
            } else if bluesPoints > greensPoints && bluesPoints > hazelsPoints {
                biggestForEyes = (bluesPoints * 100) / 14
                firstEyesColorName = "Blue"
                firstCase = 1
            } else if greensPoints == hazelsPoints && greensPoints > bluesPoints {
                biggestForEyes = (100 - (bluesPoints * 100) / 14) / 2
                firstEyesColorName = "Green"
                secondEyesColorName = "Hazel"
                firstCase = 2
            } else if greensPoints == bluesPoints && greensPoints > hazelsPoints {
                biggestForEyes = (100 - (hazelsPoints * 100) / 14) / 2
                firstEyesColorName = "Green"
                secondEyesColorName = "Blue"
                firstCase = 2
            } else if hazelsPoints == bluesPoints && hazelsPoints > greensPoints {
                biggestForEyes = (100 - (greensPoints * 100) / 14) /  2
                firstEyesColorName = "Hazel"
                secondEyesColorName = "Blue"
                firstCase = 2
            }
        } else if eyesValue > 1 && 1.25 > eyesValue {
            let resultForFirstEyesValue = eyesValue - 1.0
            let resultForSecondEyesValue =  1.25 - eyesValue
            
            if resultForFirstEyesValue > resultForSecondEyesValue {
                firstEyesColorName = "L. Brown"
                biggestForEyes = Int((100 * eyesValue) / 1.25)
                firstCase = 1
            } else if resultForFirstEyesValue < resultForSecondEyesValue {
                if greensPoints > hazelsPoints && greensPoints > bluesPoints {
                    firstEyesColorName = "Green"
                    biggestForEyes = Int(100 - (100 *  resultForFirstEyesValue / 0.25)) / 2
                    firstCase = 1
                } else if hazelsPoints > greensPoints && hazelsPoints > bluesPoints {
                    firstEyesColorName = "Hazel"
                    biggestForEyes = Int(100 - (100 *  resultForFirstEyesValue / 0.25)) / 2
                    firstCase = 1
                } else if bluesPoints > greensPoints && bluesPoints > hazelsPoints {
                    firstEyesColorName = "Blue"
                    biggestForEyes = Int(100 - (100 *  resultForFirstEyesValue / 0.25)) / 2
                    firstCase = 1
                } else if greensPoints == hazelsPoints && greensPoints > bluesPoints {
                    firstSkinColorName = "Green"
                    secondEyesColorName = "Hazel"
                    biggestForEyes = Int(100 - (100 *  resultForFirstEyesValue / 0.25)) / 2
                    //biggestForEyes = ((greensPoints * Int((resultForSecondEyesValue * 100) / 0.25)) / 14) / 2
                    firstCase = 2
                } else if greensPoints == bluesPoints && greensPoints > hazelsPoints {
                    firstEyesColorName = "Green"
                    secondEyesColorName = "Blue"
                    biggestForEyes = Int(100 - (100 *  resultForFirstEyesValue / 0.25)) / 2
                    firstCase = 2
                } else if hazelsPoints == bluesPoints && hazelsPoints > greensPoints {
                    firstEyesColorName = "Hazel"
                    secondEyesColorName = "Blue"
                    biggestForEyes = Int(100 - (100 *  resultForFirstEyesValue / 0.25)) / 2
                    firstCase = 2
                }
            } else if resultForFirstEyesValue == resultForSecondEyesValue {
                if greensPoints > hazelsPoints && greensPoints > bluesPoints {
                    firstEyesColorName = "L. Brown"
                    secondEyesColorName = "Green"
                    biggestForEyes = 50
                    secondBiggestForEyes = (greensPoints * 50) / 14
                    firstCase = 3
                } else if hazelsPoints > greensPoints && hazelsPoints > bluesPoints {
                    firstEyesColorName = "L. Brown"
                    secondEyesColorName = "Hazel"
                    biggestForEyes = 50
                    secondBiggestForEyes = 100 - (hazelsPoints * 50) / 14
                    firstCase = 3
                } else if bluesPoints > greensPoints && bluesPoints > hazelsPoints {
                    firstEyesColorName = "L. Brown"
                    secondEyesColorName = "Blue"
                    biggestForEyes = 50
                    secondBiggestForEyes = 100 - (bluesPoints * 50) / 14
                    firstCase = 3
                } else if greensPoints == hazelsPoints && greensPoints > bluesPoints {
                    firstEyesColorName = "L. Brown"
                    secondEyesColorName = "Green"
                    thirdEyesColorName = "Hazel"
                    biggestForEyes = 50
                    secondBiggestForEyes = 100 - (greensPoints * 50) / 14
                    firstCase = 4
                } else if greensPoints == bluesPoints && greensPoints > hazelsPoints {
                    firstEyesColorName = "L. Brown"
                    secondEyesColorName = "Green"
                    thirdEyesColorName = "Blue"
                    biggestForEyes = 50
                    secondBiggestForEyes = 100 - (greensPoints * 50) / 14
                    firstCase = 4
                } else if hazelsPoints == bluesPoints && hazelsPoints > greensPoints {
                    firstEyesColorName = "L. Brown"
                    secondEyesColorName = "Hazel"
                    thirdEyesColorName = "Blue"
                    biggestForEyes = 50
                    secondBiggestForEyes = 100 - (hazelsPoints * 50) / 14
                    firstCase = 4
                }
            }
        } else if eyesValue == 1.25 {
            firstEyesColorName = "L. Brown"
            biggestForEyes = 100
            firstCase = 1
        } else if eyesValue > 1.25 && 1.5 > eyesValue {
            let resultForFirstEyesValue = eyesValue - 1.25
            let resultForSecondEyesValue =  1.5 - eyesValue
            
            if resultForFirstEyesValue > resultForSecondEyesValue {
                firstEyesColorName = "Brown"
                biggestForEyes = Int(100 - (100 * resultForSecondEyesValue) / 0.25)
                firstCase = 1
            } else if resultForFirstEyesValue < resultForSecondEyesValue {
                firstEyesColorName = "L. Brown"
                biggestForEyes = Int((100 * resultForSecondEyesValue) / 0.25)
                firstCase = 1
            } else if resultForFirstEyesValue == resultForSecondEyesValue {
                firstEyesColorName = "Brown"
                secondEyesColorName = "L. Brown"
                biggestForEyes = 50
                firstCase = 2
            }
        } else if eyesValue == 1.5 {
            firstEyesColorName = "Brown"
            biggestForEyes = 100
            firstCase = 1
        } else if eyesValue > 1.5 && 1.75 > eyesValue {
            let resultForFirstEyesValue = eyesValue - 1.5
            let resultForSecondEyesValue =  1.75 - eyesValue
            
            if resultForFirstEyesValue > resultForSecondEyesValue {
                firstEyesColorName = "D. Brown"
                biggestForEyes = Int(100 - (100 * resultForSecondEyesValue) / 0.25)
                firstCase = 1
            } else if resultForFirstEyesValue < resultForSecondEyesValue {
                firstEyesColorName = "Brown"
                biggestForEyes = Int((100 * resultForSecondEyesValue) / 0.25)
                firstCase = 1
            } else if resultForFirstEyesValue == resultForSecondEyesValue {
                firstEyesColorName = "D. Brown"
                secondEyesColorName = "Brown"
                biggestForEyes = 50
                firstCase = 2
            }
        } else if eyesValue == 1.75 {
            firstEyesColorName = "D. Brown"
            biggestForEyes = 100
            firstCase = 1
        } else if eyesValue > 1.75 && 2 > eyesValue {
            let resultForFirstEyesValue = eyesValue - 1.75
            let resultForSecondEyesValue =  2 - eyesValue
            
            if resultForFirstEyesValue > resultForSecondEyesValue {
                firstEyesColorName = "Black"
                biggestForEyes = Int(100 - (100 * resultForSecondEyesValue) / 0.25)
                firstCase = 1
            } else if resultForFirstEyesValue < resultForSecondEyesValue {
                firstEyesColorName = "D. Brown"
                biggestForEyes = Int((100 * resultForSecondEyesValue) / 0.25)
                firstCase = 1
            } else if resultForFirstEyesValue == resultForSecondEyesValue {
                firstEyesColorName = "Black"
                secondEyesColorName = "D. Brown"
                biggestForEyes = 50
                firstCase = 2
            }
        } else if eyesValue == 2 {
            firstEyesColorName = "Black"
            biggestForEyes = 100
            firstCase = 1
        }
        
        if skinValue == 1 {
            firstSkinColorName = "White"
            biggestForSkin = 100
            secondCase = 1
        } else if skinValue > 1 && 1.25 > skinValue {
            let resultForFirstSkinValue = skinValue - 1.0
            let resultForSecondSkinValue =  1.25 - skinValue
            
            if resultForFirstSkinValue > resultForSecondSkinValue {
                firstSkinColorName = "L. Brown"
                biggestForSkin = Int(100 - (100 * skinValue) / 1.25)
                secondCase = 1
            } else if resultForFirstSkinValue < resultForSecondSkinValue {
                firstSkinColorName = "White"
                biggestForSkin = Int((100 * resultForFirstSkinValue) / 0.25)
                secondCase = 1
            } else if resultForFirstSkinValue == resultForSecondSkinValue {
                firstSkinColorName = "L. Brown"
                secondSkinColorName = "White"
                biggestForSkin = 50
                secondCase = 2
            }
        } else if skinValue == 1.25 {
            firstSkinColorName = "L. Brown"
            biggestForSkin = 100
            secondCase = 1
        } else if skinValue > 1.25 && 1.5 > skinValue {
            let resultForFirstSkinValue = skinValue - 1.25
            let resultForSecondSkinValue =  1.5 - skinValue
            
            if resultForFirstSkinValue > resultForSecondSkinValue {
                firstSkinColorName = "Brown"
                biggestForSkin = Int(100 - (100 * resultForSecondSkinValue) / 0.25)
                secondCase = 1
            } else if resultForFirstSkinValue < resultForSecondSkinValue {
                firstSkinColorName = "L. Brown"
                biggestForSkin = Int((100 * resultForFirstSkinValue) / 0.25)
                secondCase = 1
            } else if resultForFirstSkinValue == resultForSecondSkinValue {
                firstSkinColorName = "Brown"
                secondSkinColorName = "L. Brown"
                biggestForSkin = 50
                secondCase = 2
            }
        } else if skinValue == 1.5 {
            firstSkinColorName = "Brown"
            biggestForSkin = 100
            secondCase = 1
        } else if skinValue > 1.5 && 1.75 > skinValue {
            let resultForFirstSkinValue = skinValue - 1.5
            let resultForSecondSkinValue =  1.75 - skinValue
            
            if resultForFirstSkinValue > resultForSecondSkinValue {
                firstSkinColorName = "D. Brown"
                biggestForSkin = Int(100 - (100 * resultForSecondSkinValue) / 0.25)
                secondCase = 1
            } else if resultForFirstSkinValue < resultForSecondSkinValue {
                firstSkinColorName = "Brown"
                biggestForSkin = Int((100 * resultForSecondSkinValue) / 0.25)
                secondCase = 1
            } else if resultForFirstSkinValue == resultForSecondSkinValue {
                firstSkinColorName = "D. Brown"
                secondSkinColorName = "Brown"
                biggestForSkin = 50
                secondCase = 2
            }
        } else if skinValue == 1.75 {
            firstSkinColorName = "D. Brown"
            biggestForSkin = 100
            secondCase = 1
        } else if skinValue > 1.75 && 2 > skinValue {
            let resultForFirstSkinValue = skinValue - 1.75
            let resultForSecondSkinValue =  2 - skinValue
            
            if resultForFirstSkinValue > resultForSecondSkinValue {
                firstSkinColorName = "Black"
                biggestForSkin = Int(100 - (100 * resultForSecondSkinValue) / 0.25)
                secondCase = 1
            } else if resultForFirstSkinValue < resultForSecondSkinValue {
                firstSkinColorName = "D. Brown"
                biggestForSkin = Int((100 * resultForFirstSkinValue) / 0.25)
                secondCase = 1
            } else if resultForFirstSkinValue == resultForSecondSkinValue {
                firstSkinColorName = "Black"
                secondSkinColorName = "D. Brown"
                biggestForSkin = 50
                secondCase = 2
            }
        } else if skinValue == 2 {
            firstSkinColorName = "Black"
            biggestForSkin = 100
            secondCase = 1
        }
        
        if hairValue == 1 {
            if auburnsPoints > yellowsPoints && auburnsPoints > redsPoints {
                biggestForHair = (auburnsPoints * 100) / 14
                firstHairColorName = "Auburn"
                thirdCase = 1
            } else if yellowsPoints > auburnsPoints && yellowsPoints > redsPoints {
                biggestForHair = (yellowsPoints * 100) / 14
                firstHairColorName = "Yellow"
                thirdCase = 1
            } else if redsPoints > auburnsPoints && redsPoints > yellowsPoints {
                biggestForHair = (redsPoints * 100) / 14
                firstHairColorName = "Red"
                thirdCase = 1
            } else if auburnsPoints == yellowsPoints && auburnsPoints > redsPoints {
                biggestForHair = (auburnsPoints * 100) / 14
                firstHairColorName = "Auburn"
                secondHairColorName = "Yellow"
                thirdCase = 2
            } else if auburnsPoints == redsPoints && auburnsPoints > yellowsPoints {
                biggestForHair = (auburnsPoints * 100) / 14
                firstHairColorName = "Auburn"
                secondHairColorName = "Red"
                thirdCase = 2
            } else if yellowsPoints == redsPoints && yellowsPoints > auburnsPoints {
                biggestForHair = (yellowsPoints * 100) / 14
                firstHairColorName = "Yellow"
                secondHairColorName = "Red"
                thirdCase = 2
            }
        } else if hairValue > 1 && 1.25 > hairValue {
            let resultForFirstHairValue = hairValue - 1
            let resultForSecondHairValue = 1.25 - hairValue
            
            if resultForFirstHairValue > resultForSecondHairValue {
                firstHairColorName = "L. Brown"
                biggestForEyes = Int((100 * hairValue) / 1.25)
                thirdCase = 1
            } else if resultForFirstHairValue < resultForSecondHairValue {
                if auburnsPoints > yellowsPoints && auburnsPoints > redsPoints {
                    firstHairColorName = "Auburn"
                    biggestForHair = (auburnsPoints * Int((resultForSecondHairValue * 100) / 0.25)) / 14
                    thirdCase = 1
                } else if yellowsPoints > auburnsPoints && yellowsPoints > redsPoints {
                    firstHairColorName = "Yellow"
                    biggestForHair = (yellowsPoints * Int((resultForSecondHairValue * 100) / 0.25)) / 14
                    thirdCase = 1
                } else if redsPoints > auburnsPoints && redsPoints > yellowsPoints {
                    firstHairColorName = "Red"
                    biggestForHair = (redsPoints * Int((resultForSecondHairValue * 100) / 0.25)) / 14
                    thirdCase = 1
                } else if auburnsPoints == yellowsPoints && auburnsPoints > redsPoints {
                    firstHairColorName = "Auburn"
                    secondHairColorName = "Yellow"
                    biggestForHair = Int(100 - (100 *  resultForFirstHairValue / 0.25)) / 2
                    thirdCase = 2
                } else if auburnsPoints == redsPoints && auburnsPoints > yellowsPoints {
                    firstHairColorName = "Auburn"
                    secondHairColorName = "Red"
                    biggestForHair = Int(100 - (100 *  resultForFirstHairValue / 0.25)) / 2
                    thirdCase = 2
                } else if yellowsPoints == redsPoints && yellowsPoints > auburnsPoints {
                    firstHairColorName = "Yellow"
                    secondHairColorName = "Red"
                    biggestForHair = Int(100 - (100 *  resultForFirstHairValue / 0.25)) / 2
                    thirdCase = 2
                }
            } else if resultForFirstHairValue == resultForSecondHairValue {
                if auburnsPoints > yellowsPoints && auburnsPoints > redsPoints {
                    firstHairColorName = "L. Brown"
                    secondHairColorName = "Green"
                    biggestForHair = 50
                    secondBiggestForHair = (auburnsPoints * 50) / 14
                    thirdCase = 3
                } else if yellowsPoints > auburnsPoints && yellowsPoints > redsPoints {
                    firstHairColorName = "L. Brown"
                    secondHairColorName = "Hazel"
                    biggestForHair = 50
                    secondBiggestForHair = (yellowsPoints * 50) / 14
                    thirdCase = 3
                } else if redsPoints > auburnsPoints && redsPoints > yellowsPoints {
                    firstHairColorName = "L. Brown"
                    secondHairColorName = "Blue"
                    biggestForHair = 50
                    secondBiggestForHair = (redsPoints * 50) / 14
                    thirdCase = 3
                } else if auburnsPoints == yellowsPoints && auburnsPoints > redsPoints {
                    firstHairColorName = "L. Brown"
                    secondHairColorName = "Green"
                    thirdHairColorName = "Hazel"
                    biggestForHair = 50
                    secondBiggestForHair = 100 - (auburnsPoints * 50) / 14
                    thirdCase = 4
                } else if auburnsPoints == redsPoints && auburnsPoints > yellowsPoints {
                    firstHairColorName = "L. Brown"
                    secondHairColorName = "Green"
                    thirdHairColorName = "Blue"
                    biggestForHair = 50
                    secondBiggestForHair = 100 - (auburnsPoints * 50) / 14
                    thirdCase = 4
                } else if yellowsPoints == redsPoints && yellowsPoints > auburnsPoints {
                    firstHairColorName = "L. Brown"
                    secondHairColorName = "Hazel"
                    thirdHairColorName = "Blue"
                    biggestForHair = 50
                    secondBiggestForHair = 100 - (yellowsPoints * 50) / 14
                    thirdCase = 4
                }
            }
        } else if hairValue == 1.25 {
            firstHairColorName = "L. Brown"
            biggestForHair = 100
            thirdCase = 1
        } else if hairValue > 1.25 && 1.5 > hairValue {
            let resultForFirstHairValue = hairValue - 1.25
            let resultForSecondHairValue = 1.5 - hairValue
            
            if resultForFirstHairValue > resultForSecondHairValue {
                firstHairColorName = "Brown"
                biggestForHair = Int(100 - (100 * resultForSecondHairValue) / 0.25)
                thirdCase = 1
            } else if resultForFirstHairValue < resultForSecondHairValue {
                firstHairColorName = "L. Brown"
                biggestForHair = Int((100 * resultForSecondHairValue) / 0.25)
                thirdCase = 1
            } else if resultForFirstHairValue == resultForSecondHairValue {
                firstHairColorName = "Brown"
                secondSkinColorName = "L. Brown"
                biggestForHair = 50
                thirdCase = 2
            }
        } else if hairValue == 1.5 {
            firstHairColorName = "Brown"
            biggestForHair = 100
            thirdCase = 1
        } else if hairValue > 1.5 && 1.75 > hairValue {
            let resultForFirstHairValue = hairValue - 1.5
            let resultForSecondHairValue = 1.75 - hairValue
            
            if resultForFirstHairValue > resultForSecondHairValue {
                firstHairColorName = "D. Brown"
                biggestForHair = Int(100 - (100 * resultForSecondHairValue) / 0.25)
                thirdCase = 1
            } else if resultForFirstHairValue < resultForSecondHairValue {
                firstHairColorName = "Brown"
                biggestForHair = Int((100 * resultForSecondHairValue) / 0.25)
                thirdCase = 1
            } else if resultForFirstHairValue == resultForSecondHairValue {
                firstHairColorName = "D. Brown"
                secondSkinColorName = "Brown"
                biggestForHair = 50
                thirdCase = 2
            }
        } else if hairValue == 1.75 {
            firstHairColorName = "D. Brown"
            biggestForHair = 100
            thirdCase = 1
        } else if hairValue > 1.75 && 2 > hairValue {
            let resultForFirstHairValue = hairValue - 1.75
            let resultForSecondHairValue = 2 - hairValue
            
            if resultForFirstHairValue > resultForSecondHairValue {
                firstHairColorName = "Black"
                biggestForHair = Int(100 - (100 * resultForSecondHairValue) / 0.25)
                thirdCase = 1
            } else if resultForFirstHairValue < resultForSecondHairValue {
                firstHairColorName = "D. Brown"
                biggestForHair = Int((100 * resultForSecondHairValue) / 0.25)
                thirdCase = 1
            } else if resultForFirstHairValue == resultForSecondHairValue {
                firstHairColorName = "Black"
                secondSkinColorName = "D. Brown"
                biggestForHair = 50
                thirdCase = 2
            }
        } else if hairValue == 2 {
            firstHairColorName = "Black"
            biggestForHair = 100
            thirdCase = 1
        }
        
        if personsCases[0] == true && personsCases[1] == true {
            if personsCases[2] == true && personsCases[3] == true {
                fourthCase = 1
            } else if personsCases[2] == false && personsCases[3] == true {
                if personsCases[6] == true && personsCases[7] == true {
                    fourthCase = 3
                } else if personsCases[6] == false && personsCases[7] == true {
                    fourthCase = 1
                } else if personsCases[6] == true && personsCases[7] == false {
                    fourthCase = 1
                } else if personsCases[6] == false && personsCases[7] == false {
                    fourthCase = 1
                }
            } else if personsCases[2] == true && personsCases[3] == false {
                fourthCase = 3
            } else if personsCases[2] == false && personsCases[3] == false {
                fourthCase = 3
            }
            
            if personsCases[4] == true && personsCases[5] == true {
                fourthCase = 1
            } else if personsCases[4] == false && personsCases[5] == true {
                if personsCases[10] == true && personsCases[11] == true {
                    fourthCase = 3
                } else if personsCases[10] == false && personsCases[11] == true {
                    fourthCase = 1
                } else if personsCases[10] == true && personsCases[11] == false {
                    fourthCase = 1
                } else if personsCases[10] == false && personsCases[11] == false {
                    fourthCase = 1
                }
            } else if personsCases[4] == true && personsCases[5] == false {
                fourthCase = 1
            } else if personsCases[4] == false && personsCases[5] == false {
                fourthCase = 3
            }
        } else if personsCases[0] == true && personsCases[1] == false {
            if personsCases[2] == true && personsCases[3] == true {
                fourthCase = 1
            } else if personsCases[2] == true && personsCases[3] == false {
                fourthCase = 3
            } else if personsCases[2] == false && personsCases[3] == true {
                if personsCases[6] == true && personsCases[7] == true {
                    
                } else if personsCases[6] == true && personsCases[7] == false {
                    
                } else if personsCases[6] == false && personsCases[7] == true {
                    
                } else if personsCases[6] == false && personsCases[7] == false {
                    
                }
            } else if personsCases[2] == false && personsCases[3] == false {
                fourthCase = 3
            }
        } else if personsCases[0] == false && personsCases[1] == true {
            if personsCases[2] == true && personsCases[3] == true {
                fourthCase = 3
            } else if personsCases[2] == true && personsCases[3] == false {
                
            } else if personsCases[2] == false && personsCases[3] == true {
                fourthCase = 2
            } else if personsCases[2] == false && personsCases[3] == false {
                fourthCase = 1
            }
        } else if personsCases[0] == false && personsCases[1] == false {
            if personsCases[2] == false && personsCases[3] == false && personsCases[4] == false && personsCases[5] == false {
                biggestForAnemia = 0
                fourthCase = 1
            } else if personsCases[2] == false && personsCases[3] == true {
                fourthCase = 2
            }
         }
        
        if firstCase == 1 {
            firstCaseResult = "\(firstEyesColorName)-eyes \(biggestForEyes)%"
        } else if firstCase == 2 {
            firstCaseResult = "\(firstEyesColorName)-eyes \(biggestForEyes)% and \(secondEyesColorName)-eyes \(biggestForEyes)%"
        } else if firstCase == 3 {
            firstCaseResult = "\(firstEyesColorName)-eyes \(biggestForEyes)% and \(secondEyesColorName)-eyes \(secondBiggestForEyes)%"
        } else if firstCase == 4 {
            firstCaseResult = "\(firstEyesColorName)-eyes \(biggestForEyes)%, \(secondEyesColorName)-eyes \(secondBiggestForEyes)% and \(thirdEyesColorName)-eyes \(secondBiggestForEyes)%"
        }
        
        if secondCase == 1 {
            secondCaseResult = "\(firstSkinColorName)-skin \(biggestForSkin)%"
        } else if secondCase == 2 {
            secondCaseResult = "\(firstSkinColorName)-skin \(biggestForSkin)% and \(secondSkinColorName)-skin \(biggestForSkin)%"
        }
        
        if thirdCase == 1 {
            thirdCaseResult = "\(firstHairColorName)-hair \(biggestForHair)%"
        } else if thirdCase == 2 {
            thirdCaseResult = "\(firstHairColorName)-hair \(biggestForHair)% and \(secondHairColorName)-hair \(biggestForHair)%"
        } else if thirdCase == 3 {
            thirdCaseResult = "\(firstHairColorName)-hair \(biggestForHair)% and \(secondHairColorName)-hair \(secondBiggestForHair)%"
        } else if thirdCase == 4 {
            thirdCaseResult = "\(firstHairColorName)-hair \(biggestForHair)%, \(secondHairColorName)-hair \(secondBiggestForHair)% and \(thirdHairColorName)-hair \(secondBiggestForHair)%"
        }
        
        if fourthCase == 1 {
            fourthCaseResult = "If the child is a boy: \(biggestForAnemia). If the child is a girl: \(biggestForAnemia)."
        } else if fourthCase == 2 {
            fourthCaseResult = "If the child is a boy: \(biggestForAnemia). If the child is a girl: \(secondBiggestForAnemia)."
        } else if fourthCase == 3 {
            fourthCaseResult = "Wrong entry: please, again refill the anemia section"
        }
        
        inputTextView.text = """
        The highest probability of child's eyes color:
        \(firstCaseResult).
        The highest probability of child's skin color:
        \(secondCaseResult).
        The highest probability of child's hair color:
        \(thirdCaseResult).
        The highest probability of child's anemia case:
        \(fourthCaseResult).
        """
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return familyPersonsNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InputVCCell", for: indexPath) as! InputVCCell
        
        cell.familyPersonLabel.text = familyPersonsNames[indexPath.row]
        cell.eyesLabel.text = secondEyesTexts[indexPath.row]
        cell.skinLabel.text = secondSkinTexts[indexPath.row]
        cell.hairLabel.text = secondHairTexts[indexPath.row]
        cell.anemiaLabel.text = secondAnemiaTexts[indexPath.row]
    
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func createData() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newGene = NSEntityDescription.insertNewObject(forEntityName: "Genes", into: context)
        
        newGene.setValue(nameLabel.text, forKey: "name")
        newGene.setValue(inputTextView.text, forKey: "textView")
        newGene.setValue(secondEyesTexts[0], forKey: "momEyesC")
        newGene.setValue(secondSkinTexts[0], forKey: "momSkinC")
        newGene.setValue(secondHairTexts[0], forKey: "momHairC")
        newGene.setValue(secondAnemiaTexts[0], forKey: "momAnemiaC")
        newGene.setValue(secondEyesTexts[1], forKey: "dadEyesC")
        newGene.setValue(secondSkinTexts[1], forKey: "dadSkinC")
        newGene.setValue(secondHairTexts[1], forKey: "dadHairC")
        newGene.setValue(secondAnemiaTexts[1], forKey: "dadAnemiaC")
        newGene.setValue(secondEyesTexts[2], forKey: "momsMomEyesC")
        newGene.setValue(secondSkinTexts[2], forKey: "momsMomSkinC")
        newGene.setValue(secondHairTexts[2], forKey: "momsMomHairC")
        newGene.setValue(secondAnemiaTexts[2], forKey: "momsMomAnemiaC")
        newGene.setValue(secondEyesTexts[3], forKey: "dadsMomEyesC")
        newGene.setValue(secondSkinTexts[3], forKey: "dadsMomSkinC")
        newGene.setValue(secondHairTexts[3], forKey: "dadsMomHairC")
        newGene.setValue(secondAnemiaTexts[3], forKey: "dadsMomAnemiaC")
        newGene.setValue(secondEyesTexts[4], forKey: "momsDadEyesC")
        newGene.setValue(secondSkinTexts[4], forKey: "momsDadSkinC")
        newGene.setValue(secondHairTexts[4], forKey: "momsDadHairC")
        newGene.setValue(secondAnemiaTexts[4], forKey: "momsDadAnemiaC")
        newGene.setValue(secondEyesTexts[5], forKey: "dadsDadEyesC")
        newGene.setValue(secondSkinTexts[5], forKey: "dadsDadSkinC")
        newGene.setValue(secondHairTexts[5], forKey: "dadsDadHairC")
        newGene.setValue(secondAnemiaTexts[5], forKey: "dadsDadAnemiaC")
        newGene.setValue(secondEyesTexts[6], forKey: "momsMomsMomEyesC")
        newGene.setValue(secondSkinTexts[6], forKey: "momsMomsMomSkinC")
        newGene.setValue(secondHairTexts[6], forKey: "momsMomsMomHairC")
        newGene.setValue(secondAnemiaTexts[6], forKey: "momsMomsMomAnemiaC")
        newGene.setValue(secondEyesTexts[7], forKey: "momsMomsDadEyesC")
        newGene.setValue(secondSkinTexts[7], forKey: "momsMomsDadSkinC")
        newGene.setValue(secondHairTexts[7], forKey: "momsMomsDadHairC")
        newGene.setValue(secondAnemiaTexts[7], forKey: "momsMomsDadAnemiaC")
        newGene.setValue(secondEyesTexts[8], forKey: "momsDadsMomEyesC")
        newGene.setValue(secondSkinTexts[8], forKey: "momsDadsMomSkinC")
        newGene.setValue(secondHairTexts[8], forKey: "momsDadsMomHairC")
        newGene.setValue(secondAnemiaTexts[8], forKey: "momsDadsMomAnemiaC")
        newGene.setValue(secondEyesTexts[9], forKey: "momsDadsDadEyesC")
        newGene.setValue(secondSkinTexts[9], forKey: "momsDadsDadSkinC")
        newGene.setValue(secondHairTexts[9], forKey: "momsDadsDadHairC")
        newGene.setValue(secondAnemiaTexts[9], forKey: "momsDadsDadAnemiaC")
        newGene.setValue(secondEyesTexts[10], forKey: "dadsMomsMomEyesC")
        newGene.setValue(secondSkinTexts[10], forKey: "dadsMomsMomSkinC")
        newGene.setValue(secondHairTexts[10], forKey: "dadsMomsMomHairC")
        newGene.setValue(secondAnemiaTexts[10], forKey: "dadsMomsMomAnemiaC")
        newGene.setValue(secondEyesTexts[11], forKey: "dadsMomsDadEyesC")
        newGene.setValue(secondSkinTexts[11], forKey: "dadsMomsDadSkinC")
        newGene.setValue(secondHairTexts[11], forKey: "dadsMomsDadHairC")
        newGene.setValue(secondAnemiaTexts[11], forKey: "dadsMomsDadAnemiaC")
        newGene.setValue(secondEyesTexts[12], forKey: "dadsDadsMomEyesC")
        newGene.setValue(secondSkinTexts[12], forKey: "dadsDadsMomSkinC")
        newGene.setValue(secondHairTexts[12], forKey: "dadsDadsMomHairC")
        newGene.setValue(secondAnemiaTexts[12], forKey: "dadsDadsMomAnemiaC")
        newGene.setValue(secondEyesTexts[13], forKey: "dadsDadsDadEyesC")
        newGene.setValue(secondSkinTexts[13], forKey: "dadsDadsDadSkinC")
        newGene.setValue(secondHairTexts[13], forKey: "dadsDadsDadHairC")
        newGene.setValue(secondAnemiaTexts[13], forKey: "dadsDadsDadAnemiaC")
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "newGenes"), object: nil)
    }
    
    func updateData() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "Genes")
        fetchRequest.predicate = NSPredicate(format: "name = %@", "newGenes")
        
        do {
            let test = try managedContext.fetch(fetchRequest)
            
            let objectUpdate = test[0] as! NSManagedObject
            objectUpdate.setValue(nameLabel.text, forKey: "name")
            objectUpdate.setValue(inputTextView.text, forKey: "textView")
            objectUpdate.setValue(nameLabel.text, forKey: "name")
            objectUpdate.setValue(inputTextView.text, forKey: "textView")
            objectUpdate.setValue(secondEyesTexts[0], forKey: "momEyesC")
            objectUpdate.setValue(secondSkinTexts[0], forKey: "momSkinC")
            objectUpdate.setValue(secondHairTexts[0], forKey: "momHairC")
            objectUpdate.setValue(secondAnemiaTexts[0], forKey: "momAnemiaC")
            objectUpdate.setValue(secondEyesTexts[1], forKey: "dadEyesC")
            objectUpdate.setValue(secondSkinTexts[1], forKey: "dadSkinC")
            objectUpdate.setValue(secondHairTexts[1], forKey: "dadHairC")
            objectUpdate.setValue(secondAnemiaTexts[1], forKey: "dadAnemiaC")
            objectUpdate.setValue(secondEyesTexts[2], forKey: "momsMomEyesC")
            objectUpdate.setValue(secondSkinTexts[2], forKey: "momsMomSkinC")
            objectUpdate.setValue(secondHairTexts[2], forKey: "momsMomHairC")
            objectUpdate.setValue(secondAnemiaTexts[2], forKey: "momsMomAnemiaC")
            objectUpdate.setValue(secondEyesTexts[3], forKey: "dadsMomEyesC")
            objectUpdate.setValue(secondSkinTexts[3], forKey: "dadsMomSkinC")
            objectUpdate.setValue(secondHairTexts[3], forKey: "dadsMomHairC")
            objectUpdate.setValue(secondAnemiaTexts[3], forKey: "dadsMomAnemiaC")
            objectUpdate.setValue(secondEyesTexts[4], forKey: "momsDadEyesC")
            objectUpdate.setValue(secondSkinTexts[4], forKey: "momsDadSkinC")
            objectUpdate.setValue(secondHairTexts[4], forKey: "momsDadHairC")
            objectUpdate.setValue(secondAnemiaTexts[4], forKey: "momsDadAnemiaC")
            objectUpdate.setValue(secondEyesTexts[5], forKey: "dadsDadEyesC")
            objectUpdate.setValue(secondSkinTexts[5], forKey: "dadsDadSkinC")
            objectUpdate.setValue(secondHairTexts[5], forKey: "dadsDadHairC")
            objectUpdate.setValue(secondAnemiaTexts[5], forKey: "dadsDadAnemiaC")
            objectUpdate.setValue(secondEyesTexts[6], forKey: "momsMomsMomEyesC")
            objectUpdate.setValue(secondSkinTexts[6], forKey: "momsMomsMomSkinC")
            objectUpdate.setValue(secondHairTexts[6], forKey: "momsMomsMomHairC")
            objectUpdate.setValue(secondAnemiaTexts[6], forKey: "momsMomsMomAnemiaC")
            objectUpdate.setValue(secondEyesTexts[7], forKey: "momsMomsDadEyesC")
            objectUpdate.setValue(secondSkinTexts[7], forKey: "momsMomsDadSkinC")
            objectUpdate.setValue(secondHairTexts[7], forKey: "momsMomsDadHairC")
            objectUpdate.setValue(secondAnemiaTexts[7], forKey: "momsMomsDadAnemiaC")
            objectUpdate.setValue(secondEyesTexts[8], forKey: "momsDadsMomEyesC")
            objectUpdate.setValue(secondSkinTexts[8], forKey: "momsDadsMomSkinC")
            objectUpdate.setValue(secondHairTexts[8], forKey: "momsDadsMomHairC")
            objectUpdate.setValue(secondAnemiaTexts[8], forKey: "momsDadsMomAnemiaC")
            objectUpdate.setValue(secondEyesTexts[9], forKey: "momsDadsDadEyesC")
            objectUpdate.setValue(secondSkinTexts[9], forKey: "momsDadsDadSkinC")
            objectUpdate.setValue(secondHairTexts[9], forKey: "momsDadsDadHairC")
            objectUpdate.setValue(secondAnemiaTexts[9], forKey: "momsDadsDadAnemiaC")
            objectUpdate.setValue(secondEyesTexts[10], forKey: "dadsMomsMomEyesC")
            objectUpdate.setValue(secondSkinTexts[10], forKey: "dadsMomsMomSkinC")
            objectUpdate.setValue(secondHairTexts[10], forKey: "dadsMomsMomHairC")
            objectUpdate.setValue(secondAnemiaTexts[10], forKey: "dadsMomsMomAnemiaC")
            objectUpdate.setValue(secondEyesTexts[11], forKey: "dadsMomsDadEyesC")
            objectUpdate.setValue(secondSkinTexts[11], forKey: "dadsMomsDadSkinC")
            objectUpdate.setValue(secondHairTexts[11], forKey: "dadsMomsDadHairC")
            objectUpdate.setValue(secondAnemiaTexts[11], forKey: "dadsMomsDadAnemiaC")
            objectUpdate.setValue(secondEyesTexts[12], forKey: "dadsDadsMomEyesC")
            objectUpdate.setValue(secondSkinTexts[12], forKey: "dadsDadsMomSkinC")
            objectUpdate.setValue(secondHairTexts[12], forKey: "dadsDadsMomHairC")
            objectUpdate.setValue(secondAnemiaTexts[12], forKey: "dadsDadsMomAnemiaC")
            objectUpdate.setValue(secondEyesTexts[13], forKey: "dadsDadsDadEyesC")
            objectUpdate.setValue(secondSkinTexts[13], forKey: "dadsDadsDadSkinC")
            objectUpdate.setValue(secondHairTexts[13], forKey: "dadsDadsDadHairC")
            objectUpdate.setValue(secondAnemiaTexts[13], forKey: "dadsDadsDadAnemiaC")
            
            do {
                try managedContext.save()
            } catch {}
        } catch {}
    }
    
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
//        if update == false {
//            createData()
//        } else if update == true {
//            updateData()
//        }
        
        createData()
        
        performSegue(withIdentifier: "toViewController", sender: nil)
        update = false
    }
}
