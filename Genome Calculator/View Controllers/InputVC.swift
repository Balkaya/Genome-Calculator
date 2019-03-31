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
    @IBOutlet var labels: [UILabel]!
    
    @IBOutlet weak var inputTextView: UITextView!
    
    var thirdTF = false
    
    var name = ""
    var firstText = ""
    var secondText = ""
    var thirdText = ""
    var fourthText = ""
    var fifthText = ""
    var sixthText = ""
    var seventhText = ""
    var eighthText = ""
    var ninthText = ""
    var tenthText = ""
    var eleventhText = ""
    var twelfthText = ""
    var thirteenthText = ""
    var fourteenthText = ""
    var fifteenthText = ""
    var sixteenthText = ""
    var seventeenthText = ""
    var eighteenthText = ""
    var ninteenthText = ""
    var twentiethText = ""
    var twentyFirstText = ""
    var twentySecondText = ""
    var twentyThirdText = ""
    var twentyFourthText = ""
    var twentyFifthText = ""
    var twentySixthText = ""
    var twentySeventhText = ""
    var twentyEighthText = ""
    var twentyNinthText = ""
    var thirtiethText = ""
    var thirtyFirstText = ""
    var thirtySecondText = ""
    var thirtyThirdText = ""
    var thirtyFourthText = ""
    var thirtyFifthText = ""
    var thirtySixthText = ""
    var thirtySeventhText = ""
    var thirtyEightText = ""
    var thirtyNinthText = ""
    var fortiethText = ""
    var fourtyFirstText = ""
    var fourtySecondText = ""
    var fourtyThirdText = ""
    var fourtyFourthText = ""
    var fourtyFifthText = ""
    var fourtySixthText = ""
    var fourtySeventhText = ""
    var fourtyEighthText = ""
    var fourtyNinthText = ""
    var fiftiethText = ""
    var fiftyFirstText = ""
    var fiftySecondText = ""
    var fiftyThirdText = ""
    var fiftyFourthText = ""
    var fiftyFifthText = ""
    var fiftySixthText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        labels[0].text = firstText
        labels[1].text = secondText
        labels[2].text = thirdText
        labels[3].text = fourthText
        labels[4].text = fifthText
        labels[5].text = sixthText
        labels[6].text = seventhText
        labels[7].text = eighthText
        labels[8].text = ninthText
        labels[9].text = tenthText
        labels[10].text = eleventhText
        labels[11].text = twelfthText
        labels[12].text = thirteenthText
        labels[13].text = fourteenthText
        labels[14].text = fifteenthText
        labels[15].text = sixteenthText
        labels[16].text = seventeenthText
        labels[17].text = eighteenthText
        labels[18].text = ninteenthText
        labels[19].text = twentiethText
        labels[20].text = twentyFirstText
        labels[21].text = twentySecondText
        labels[22].text = twentyThirdText
        labels[23].text = twentyFourthText
        labels[24].text = twentyFifthText
        labels[25].text = twentySixthText
        labels[26].text = twentySeventhText
        labels[27].text = twentyEighthText
        labels[28].text = twentyNinthText
        labels[29].text = thirtiethText
        labels[30].text = thirtyFirstText
        labels[31].text = thirtySecondText
        labels[32].text = thirtyThirdText
        labels[33].text = thirtyFourthText
        labels[34].text = thirtyFifthText
        labels[35].text = thirtySixthText
        labels[36].text = thirtySeventhText
        labels[37].text = thirtyEightText
        labels[38].text = thirtyNinthText
        labels[39].text = fortiethText
        labels[40].text = fourtyFirstText
        labels[41].text = fourtySecondText
        labels[42].text = fourtyThirdText
        labels[43].text = fourtyFourthText
        labels[44].text = fourtyFifthText
        labels[45].text = fourtySixthText
        labels[46].text = fourtySeventhText
        labels[47].text = fourtyEighthText
        labels[48].text = fourtyNinthText
        labels[49].text = fiftiethText
        labels[50].text = fiftyFirstText
        labels[51].text = fiftySecondText
        labels[52].text = fiftyThirdText
        labels[53].text = fiftyFourthText
        labels[54].text = fiftyFifthText
        labels[55].text = fiftySixthText
        
        if firstText == "Black" {
            blackEyes += 1.0
        } else if firstText == "D. Brown" {
            dBrownEyes += 1.0
        } else if firstText == "Brown" {
            brownEyes += 1.0
        } else if firstText == "L. Brown" {
            lBrownEyes += 1.0
        } else if firstText == "Green" {
            greensPoints += 1
            greenEyes += 1.0
        } else if firstText == "Hazel" { // 1h
            hazelsPoints += 1
            hazelEyes += 1.0
        } else if firstText == "Blue" { // 1b
            bluesPoints += 1
            blueEyes += 1.0
        }
        
        if secondText == "Black" {
            blackSkin += 1.0
        } else if secondText == "D. Brown" {
            dBrownSkin += 1.0
        } else if secondText == "Brown" {
            brownSkin += 1.0
        } else if secondText == "L. Brown" {
            lBrownSkin += 1.0
        } else if secondText == "White" {
            whiteSkin += 1.0
        }
        
        if thirdText == "Black" {
            blackEyes += 1.0
        } else if thirdText == "D. Brown" {
            dBrownEyes += 1.0
        } else if thirdText == "Brown" {
            brownEyes += 1.0
        } else if thirdText == "L. Brown" {
            lBrownEyes += 1.0
        } else if thirdText == "Green" {
            greensPoints += 1
            greenEyes += 1.0
        } else if thirdText == "Hazel" { // 2h
            hazelsPoints += 1
            hazelEyes += 1.0
        } else if thirdText == "Blue" { // 2b
            bluesPoints += 1
            blueEyes += 1.0
        }
        
        if fourthText == "Black" {
            blackSkin += 1.0
        } else if fourthText == "D. Brown" {
            dBrownSkin += 1.0
        } else if fourthText == "Brown" {
            brownSkin += 1.0
        } else if fourthText == "L. Brown" {
            lBrownSkin += 1.0
        } else if fourthText == "White" {
            whiteSkin += 1.0
        }
        
        if fifthText == "Black" {
            blackEyes += 0.5
        } else if fifthText == "D. Brown" {
            dBrownEyes += 0.5
        } else if fifthText == "Brown" {
            brownEyes += 0.5
        } else if fifthText == "L. Brown" {
            lBrownEyes += 0.5
        } else if fifthText == "Green" {
            greensPoints += 1
            greenEyes += 0.5
        } else if fifthText == "Hazel" { // 3h
            hazelsPoints += 1
            hazelEyes += 0.5
        } else if fifthText == "Blue" { // 3b
            bluesPoints += 1
            blueEyes += 0.5
        }
        
        if sixthText == "Black" {
            blackSkin += 0.5
        } else if sixthText == "D. Brown" {
            dBrownSkin += 0.5
        } else if sixthText == "Brown" {
            brownSkin += 0.5
        } else if sixthText == "L. Brown" {
            lBrownSkin += 0.5
        } else if sixthText == "White" {
            whiteSkin += 0.5
        }
        
        if seventhText == "Black" {
            blackEyes += 0.5
        } else if seventhText == "D. Brown" {
            dBrownEyes += 0.5
        } else if seventhText == "Brown" {
            brownEyes += 0.5
        } else if seventhText == "L. Brown" {
            lBrownEyes += 0.5
        } else if seventhText == "Green" {
            greensPoints += 1
            greenEyes += 0.5
        } else if seventhText == "Hazel" { // 4h
            hazelsPoints += 1
            hazelEyes += 0.5
        } else if seventhText == "Blue" { // 4b
            bluesPoints += 1
            blueEyes += 0.5
        }
        
        if eighthText == "Black" {
            blackSkin += 0.5
        } else if eighthText == "D. Brown" {
            dBrownSkin += 0.5
        } else if eighthText == "Brown" {
            brownSkin += 0.5
        } else if eighthText == "L. Brown" {
            lBrownSkin += 0.5
        } else if eighthText == "White" {
            whiteSkin += 0.5
        }
        
        if ninthText == "Black" {
            blackEyes += 0.5
        } else if ninthText == "D. Brown" {
            dBrownEyes += 0.5
        } else if ninthText == "Brown" {
            brownEyes += 0.5
        } else if ninthText == "L. Brown" {
            lBrownEyes += 0.5
        } else if ninthText == "Green" {
            greensPoints += 1
            greenEyes += 0.5
        } else if ninthText == "Hazel" { // 5h
            hazelsPoints += 1
            hazelEyes += 0.5
        } else if ninthText == "Blue" { // 5b
            bluesPoints += 1
            blueEyes += 0.5
        }
        
        if tenthText == "Black" {
            blackSkin += 0.5
        } else if tenthText == "D. Brown" {
            dBrownSkin += 0.5
        } else if tenthText == "Brown" {
            brownSkin += 0.5
        } else if tenthText == "L. Brown" {
            lBrownSkin += 0.5
        } else if tenthText == "White" {
            whiteSkin += 0.5
        }
        
        if eleventhText == "Black" {
            blackEyes += 0.5
        } else if eleventhText == "D. Brown" {
            dBrownEyes += 0.5
        } else if eleventhText == "Brown" {
            brownEyes += 0.5
        } else if eleventhText == "L. Brown" {
            lBrownEyes += 0.5
        } else if eleventhText == "Green" {
            greensPoints += 1
            greenEyes += 0.5
        } else if eleventhText == "Hazel" { // 6h
            hazelsPoints += 1
            hazelEyes += 0.5
        } else if eleventhText == "Blue" { // 6b
            bluesPoints += 1
            blueEyes += 0.5
        }
        
        if twelfthText == "Black" {
            blackSkin += 0.5
        } else if twelfthText == "D. Brown" {
            dBrownSkin += 0.5
        } else if twelfthText == "Brown" {
            brownSkin += 0.5
        } else if twelfthText == "L. Brown" {
            lBrownSkin += 0.5
        } else if twelfthText == "White" {
            whiteSkin += 0.5
        }
        
        if thirteenthText == "Black" {
            blackEyes += 0.25
        } else if thirteenthText == "D. Brown" {
            dBrownEyes += 0.25
        } else if thirteenthText == "Brown" {
            brownEyes += 0.25
        } else if thirteenthText == "L. Brown" {
            lBrownEyes += 0.25
        } else if thirteenthText == "Green" {
            greensPoints += 1
            greenEyes += 0.25
        } else if thirteenthText == "Hazel" { // 7h
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if thirteenthText == "Blue" { // 7b
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if fourteenthText == "Black" {
            blackSkin += 0.25
        } else if fourteenthText == "D. Brown" {
            dBrownSkin += 0.25
        } else if fourteenthText == "Brown" {
            brownSkin += 0.25
        } else if fourteenthText == "L. Brown" {
            lBrownSkin += 0.25
        } else if fourteenthText == "White" {
            whiteSkin += 0.25
        }
        
        if fifteenthText == "Black" {
            blackEyes += 0.25
        } else if fifteenthText == "D. Brown" {
            dBrownEyes += 0.25
        } else if fifteenthText == "Brown" {
            brownEyes += 0.25
        } else if fifteenthText == "L. Brown" {
            lBrownEyes += 0.25
        } else if fifteenthText == "Green" {
            greensPoints += 1
            greenEyes += 0.25
        } else if fifteenthText == "Hazel" { // 8h
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if fifteenthText == "Blue" { // 8b
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if sixteenthText == "Black" {
            blackSkin += 0.25
        } else if sixteenthText == "D. Brown" {
            dBrownSkin += 0.25
        } else if sixteenthText == "Brown" {
            brownSkin += 0.25
        } else if sixteenthText == "L. Brown" {
            lBrownSkin += 0.25
        } else if sixteenthText == "White" {
            whiteSkin += 0.25
        }
        
        if seventeenthText == "Black" {
            blackEyes += 0.25
        } else if seventeenthText == "D. Brown" {
            dBrownEyes += 0.25
        } else if seventeenthText == "Brown" {
            brownEyes += 0.25
        } else if seventeenthText == "L. Brown" {
            lBrownEyes += 0.25
        } else if seventeenthText == "Green" {
            greensPoints += 1
            greenEyes += 0.25
        } else if seventeenthText == "Hazel" { // 9h
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if seventeenthText == "Blue" { // 9b
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if eighteenthText == "Black" {
            blackSkin += 0.25
        } else if eighteenthText == "D. Brown" {
            dBrownSkin += 0.25
        } else if eighteenthText == "Brown" {
            brownSkin += 0.25
        } else if eighteenthText == "L. Brown" {
            lBrownSkin += 0.25
        } else if eighteenthText == "White" {
            whiteSkin += 0.25
        }
        
        if ninteenthText == "Black" {
            blackEyes += 0.25
        } else if ninteenthText == "D. Brown" {
            dBrownEyes += 0.25
        } else if ninteenthText == "Brown" {
            brownEyes += 0.25
        } else if ninteenthText == "L. Brown" {
            lBrownEyes += 0.25
        } else if ninteenthText == "Green" {
            greensPoints += 1
            greenEyes += 0.25
        } else if ninteenthText == "Hazel" { // 10h
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if ninteenthText == "Blue" { // 10b
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if twentiethText == "Black" {
            blackSkin += 0.25
        } else if twentiethText == "D. Brown" {
            dBrownSkin += 0.25
        } else if twentiethText == "Brown" {
            brownSkin += 0.25
        } else if twentiethText == "L. Brown" {
            lBrownSkin += 0.25
        } else if twentiethText == "White" {
            whiteSkin += 0.25
        }
        
        if twentyFirstText == "Black" {
            blackEyes += 0.25
        } else if twentyFirstText == "D. Brown" {
            dBrownEyes += 0.25
        } else if twentyFirstText == "Brown" {
            brownEyes += 0.25
        } else if twentyFirstText == "L. Brown" {
            lBrownEyes += 0.25
        } else if twentyFirstText == "Green" {
            greensPoints += 1
            greenEyes += 0.25
        } else if twentyFirstText == "Hazel" { // 11h
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if twentyFirstText == "Blue" { // 11b
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if twentySecondText == "Black" {
            blackSkin += 0.25
        } else if twentySecondText == "D. Brown" {
            dBrownSkin += 0.25
        } else if twentySecondText == "Brown" {
            brownSkin += 0.25
        } else if twentySecondText == "L. Brown" {
            lBrownSkin += 0.25
        } else if twentySecondText == "White" {
            whiteSkin += 0.25
        }
        
        if twentyThirdText == "Black" {
            blackEyes += 0.25
        } else if twentyThirdText == "D. Brown" {
            dBrownEyes += 0.25
        } else if twentyThirdText == "Brown" {
            brownEyes += 0.25
        } else if twentyThirdText == "L. Brown" {
            lBrownEyes += 0.25
        } else if twentyThirdText == "Green" { // 12
            greensPoints += 1
            greenEyes += 0.25
        } else if twentyThirdText == "Hazel" {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if twentyThirdText == "Blue" {
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if twentyFourthText == "Black" {
            blackSkin += 0.25
        } else if twentyFourthText == "D. Brown" {
            dBrownSkin += 0.25
        } else if twentyFourthText == "Brown" {
            brownSkin += 0.25
        } else if twentyFourthText == "L. Brown" {
            lBrownSkin += 0.25
        } else if twentyFourthText == "White" {
            whiteSkin += 0.25
        }
        
        if twentyFifthText == "Black" {
            blackEyes += 0.25
        } else if twentyFifthText == "D. Brown" {
            dBrownEyes += 0.25
        } else if twentyFifthText == "Brown" {
            brownEyes += 0.25
        } else if twentyFifthText == "L. Brown" {
            lBrownEyes += 0.25
        } else if twentyFifthText == "Green" { // 13
            greensPoints += 1
            greenEyes += 0.25
        } else if twentyFifthText == "Hazel" {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if twentyFifthText == "Blue" {
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if twentySixthText == "Black" {
            blackSkin += 0.25
        } else if twentySixthText == "D. Brown" {
            dBrownSkin += 0.25
        } else if twentySixthText == "Brown" {
            brownSkin += 0.25
        } else if twentySixthText == "L. Brown" {
            lBrownSkin += 0.25
        } else if twentySixthText == "White" {
            whiteSkin += 0.25
        }
        
        if twentySeventhText == "Black" {
            blackEyes += 0.25
        } else if twentySeventhText == "D. Brown" {
            dBrownEyes += 0.25
        } else if twentySeventhText == "Brown" {
            brownEyes += 0.25
        } else if twentySeventhText == "L. Brown" {
            lBrownEyes += 0.25
        } else if twentySeventhText == "Green" { // 13
            greensPoints += 1
            greenEyes += 0.25
        } else if twentySeventhText == "Hazel" {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if twentySeventhText == "Blue" {
            bluesPoints += 1
            blueEyes += 0.25
        }
        
        if twentyEighthText == "Black" {
            blackSkin += 0.25
        } else if twentyEighthText == "D. Brown" {
            dBrownSkin += 0.25
        } else if twentyEighthText == "Brown" {
            brownSkin += 0.25
        } else if twentyEighthText == "L. Brown" {
            lBrownSkin += 0.25
        } else if twentyEighthText == "White" {
            whiteSkin += 0.25
        }
        
        if twentyNinthText == "Black" {
            blackHair += 1
        } else if twentyNinthText == "D. Brown" {
            dBrownHair += 1
        } else if twentyNinthText == "Brown" {
            brownHair += 1
        } else if twentyNinthText == "L. Brown" {
            lBrownHair += 1
        } else if twentyNinthText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 1
        } else if twentyNinthText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 1
        } else if twentyNinthText == "Red" {
            redsPoints += 1
            redHair += 1
        }
        
        if thirtiethText == "Black" {
            blackHair += 1
        } else if thirtiethText == "D. Brown" {
            dBrownHair += 1
        } else if thirtiethText == "Brown" {
            brownHair += 1
        } else if thirtiethText == "L. Brown" {
            lBrownHair += 1
        } else if thirtiethText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 1
        } else if thirtiethText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 1
        } else if thirtiethText == "Red" {
            redsPoints += 1
            redHair += 1
        }
        
        if thirtyFirstText == "Black" {
            blackHair += 0.5
        } else if thirtyFirstText == "D. Brown" {
            dBrownHair += 0.5
        } else if thirtyFirstText == "Brown" {
            brownHair += 0.5
        } else if thirtyFirstText == "L. Brown" {
            lBrownHair += 0.5
        } else if thirtyFirstText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.5
        } else if thirtyFirstText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.5
        } else if thirtyFirstText == "Red" {
            redsPoints += 1
            redHair += 0.5
        }
        
        if thirtySecondText == "Black" {
            blackHair += 0.5
        } else if thirtySecondText == "D. Brown" {
            dBrownHair += 0.5
        } else if thirtySecondText == "Brown" {
            brownHair += 0.5
        } else if thirtySecondText == "L. Brown" {
            lBrownHair += 0.5
        } else if thirtySecondText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.5
        } else if thirtySecondText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.5
        } else if thirtySecondText == "Red" {
            redsPoints += 1
            redHair += 0.5
        }
        
        if thirtyThirdText == "Black" {
            blackHair += 0.5
        } else if thirtyThirdText == "D. Brown" {
            dBrownHair += 0.5
        } else if thirtyThirdText == "Brown" {
            brownHair += 0.5
        } else if thirtyThirdText == "L. Brown" {
            lBrownHair += 0.5
        } else if thirtyThirdText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.5
        } else if thirtyThirdText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.5
        } else if thirtyThirdText == "Red" {
            redsPoints += 1
            redHair += 0.5
        }
        
        if thirtyFourthText == "Black" {
            blackHair += 0.5
        } else if thirtyFourthText == "D. Brown" {
            dBrownHair += 0.5
        } else if thirtyFourthText == "Brown" {
            brownHair += 0.5
        } else if thirtyFourthText == "L. Brown" {
            lBrownHair += 0.5
        } else if thirtyFourthText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.5
        } else if thirtyFourthText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.5
        } else if thirtyFourthText == "Red" {
            redsPoints += 1
            redHair += 0.5
        }
        
        if thirtyFifthText == "Black" {
            blackHair += 0.25
        } else if thirtyFifthText == "D. Brown" {
            dBrownHair += 0.25
        } else if thirtyFifthText == "Brown" {
            brownHair += 0.25
        } else if thirtyFifthText == "L. Brown" {
            lBrownHair += 0.25
        } else if thirtyFifthText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if thirtyFifthText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if thirtyFifthText == "Red" {
            redsPoints += 1
            redHair += 0.25
        }
        
        if thirtySixthText == "Black" {
            blackHair += 0.25
        } else if thirtySixthText == "D. Brown" {
            dBrownHair += 0.25
        } else if thirtySixthText == "Brown" {
            brownHair += 0.25
        } else if thirtySixthText == "L. Brown" {
            lBrownHair += 0.25
        } else if thirtySixthText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if thirtySixthText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if thirtySixthText == "Red" {
            redsPoints += 1
            redHair += 0.25
        }
        
        if thirtySeventhText == "Black" {
            blackHair += 0.25
        } else if thirtySeventhText == "D. Brown" {
            dBrownHair += 0.25
        } else if thirtySeventhText == "Brown" {
            brownHair += 0.25
        } else if thirtySeventhText == "L. Brown" {
            lBrownHair += 0.25
        } else if thirtySeventhText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if thirtySeventhText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if thirtySeventhText == "Red" {
            redsPoints += 1
            redHair += 0.25
        }
        
        if thirtyEightText == "Black" {
            blackHair += 0.25
        } else if thirtyEightText == "D. Brown" {
            dBrownHair += 0.25
        } else if thirtyEightText == "Brown" {
            brownHair += 0.25
        } else if thirtyEightText == "L. Brown" {
            lBrownHair += 0.25
        } else if thirtyEightText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if thirtyEightText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if thirtyEightText == "Red" {
            redsPoints += 1
            redHair += 0.25
        }
        
        if thirtyNinthText == "Black" {
            blackHair += 0.25
        } else if thirtyNinthText == "D. Brown" {
            dBrownHair += 0.25
        } else if thirtyNinthText == "Brown" {
            brownHair += 0.25
        } else if thirtyNinthText == "L. Brown" {
            lBrownHair += 0.25
        } else if thirtyNinthText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if thirtyNinthText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if thirtyNinthText == "Red" {
            redsPoints += 1
            redHair += 0.25
        }
        
        if fortiethText == "Black" {
            blackHair += 0.25
        } else if fortiethText == "D. Brown" {
            dBrownHair += 0.25
        } else if fortiethText == "Brown" {
            brownHair += 0.25
        } else if fortiethText == "L. Brown" {
            lBrownHair += 0.25
        } else if fortiethText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if fortiethText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if fortiethText == "Red" {
            redsPoints += 1
            redHair += 0.25
        }
        
        if fourtyFirstText == "Black" {
            blackHair += 0.25
        } else if fourtyFirstText == "D. Brown" {
            dBrownHair += 0.25
        } else if fourtyFirstText == "Brown" {
            brownHair += 0.25
        } else if fourtyFirstText == "L. Brown" {
            lBrownHair += 0.25
        } else if fourtyFirstText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if fourtyFirstText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if fourtyFirstText == "Red" {
            redsPoints += 1
            redHair += 0.25
        }
        
        if fourtySecondText == "Black" {
            blackHair += 0.25
        } else if fourtySecondText == "D. Brown" {
            dBrownHair += 0.25
        } else if fourtySecondText == "Brown" {
            brownHair += 0.25
        } else if fourtySecondText == "L. Brown" {
            lBrownHair += 0.25
        } else if fourtySecondText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if fourtySecondText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if fourtySecondText == "Red" {
            redsPoints += 1
            redHair += 0.25
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
        
        inputTextView.isEditable = false
        
        inputTextView.text = """
        The highest probability of child's eyes color:
        \(firstCaseResult).
        The highest probability of child's skin color:
        \(secondCaseResult).
        The highest probability of child's hair color:
        \(thirdCaseResult).
        """
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return familyPersonsNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InputVCCell", for: indexPath) as! InputVCCell
        cell.familyPersonLabel.text = familyPersonsNames[indexPath.row]
//        cell.eyesLabel = labels[indexPath.row]
//        cell.skinLabel = labels[indexPath.row]
//        cell.hairLabel = labels[indexPath.row]
//        cell.anemiaLabel = labels[indexPath.row]
        
        return cell
    }
    
    func createData() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newGene = NSEntityDescription.insertNewObject(forEntityName: "Genes", into: context)
        
        newGene.setValue(nameLabel.text, forKey: "name")
        newGene.setValue(inputTextView.text, forKey: "textView")
        newGene.setValue(labels[0].text, forKey: "momEyesC")
        newGene.setValue(labels[1].text, forKey: "momSkinC")
        newGene.setValue(labels[2].text, forKey: "momHairC")
        newGene.setValue(labels[3].text, forKey: "momAnemiaC")
        newGene.setValue(labels[4].text, forKey: "dadEyesC")
        newGene.setValue(labels[5].text, forKey: "dadSkinC")
        newGene.setValue(labels[6].text, forKey: "dadHairC")
        newGene.setValue(labels[7].text, forKey: "dadAnemiaC")
        newGene.setValue(labels[8].text, forKey: "momsMomEyesC")
        newGene.setValue(labels[9].text, forKey: "momsMomSkinC")
        newGene.setValue(labels[10].text, forKey: "momsMomHairC")
        newGene.setValue(labels[11].text, forKey: "momsMomAnemiaC")
        newGene.setValue(labels[12].text, forKey: "dadsMomEyesC")
        newGene.setValue(labels[13].text, forKey: "dadsMomSkinC")
        newGene.setValue(labels[14].text, forKey: "dadsMomHairC")
        newGene.setValue(labels[15].text, forKey: "dadsMomAnemiaC")
        newGene.setValue(labels[16].text, forKey: "momsDadEyesC")
        newGene.setValue(labels[17].text, forKey: "momsDadSkinC")
        newGene.setValue(labels[18].text, forKey: "momsDadHairC")
        newGene.setValue(labels[19].text, forKey: "momsDadAnemiaC")
        newGene.setValue(labels[20].text, forKey: "dadsDadEyesC")
        newGene.setValue(labels[21].text, forKey: "dadsDadSkinC")
        newGene.setValue(labels[22].text, forKey: "dadsDadHairC")
        newGene.setValue(labels[23].text, forKey: "dadsDadAnemiaC")
        newGene.setValue(labels[24].text, forKey: "momsMomsMomEyesC")
        newGene.setValue(labels[25].text, forKey: "momsMomsMomSkinC")
        newGene.setValue(labels[26].text, forKey: "momsMomsMomHairC")
        newGene.setValue(labels[27].text, forKey: "momsMomsMomAnemiaC")
        newGene.setValue(labels[28].text, forKey: "momsMomsDadEyesC")
        newGene.setValue(labels[29].text, forKey: "momsMomsDadSkinC")
        newGene.setValue(labels[30].text, forKey: "momsMomsDadHairC")
        newGene.setValue(labels[31].text, forKey: "momsMomsDadAnemiaC")
        newGene.setValue(labels[32].text, forKey: "momsDadsMomEyesC")
        newGene.setValue(labels[33].text, forKey: "momsDadsMomSkinC")
        newGene.setValue(labels[34].text, forKey: "momsDadsMomHairC")
        newGene.setValue(labels[35].text, forKey: "momsDadsMomAnemiaC")
        newGene.setValue(labels[36].text, forKey: "momsDadsDadEyesC")
        newGene.setValue(labels[37].text, forKey: "momsDadsDadSkinC")
        newGene.setValue(labels[38].text, forKey: "momsDadsDadHairC")
        newGene.setValue(labels[39].text, forKey: "momsDadsDadAnemiaC")
        newGene.setValue(labels[40].text, forKey: "dadsMomsMomEyesC")
        newGene.setValue(labels[41].text, forKey: "dadsMomsMomSkinC")
        newGene.setValue(labels[42].text, forKey: "dadsMomsMomHairC")
        newGene.setValue(labels[43].text, forKey: "dadsMomsMomAnemiaC")
        newGene.setValue(labels[44].text, forKey: "dadsMomsDadEyesC")
        newGene.setValue(labels[45].text, forKey: "dadsMomsDadSkinC")
        newGene.setValue(labels[46].text, forKey: "dadsMomsDadHairC")
        newGene.setValue(labels[47].text, forKey: "dadsMomsDadAnemiaC")
        newGene.setValue(labels[48].text, forKey: "dadsDadsMomEyesC")
        newGene.setValue(labels[49].text, forKey: "dadsDadsMomSkinC")
        newGene.setValue(labels[50].text, forKey: "dadsDadsMomHairC")
        newGene.setValue(labels[51].text, forKey: "dadsDadsMomAnemiaC")
        newGene.setValue(labels[52].text, forKey: "dadsDadsDadEyesC")
        newGene.setValue(labels[53].text, forKey: "dadsDadsDadSkinC")
        newGene.setValue(labels[54].text, forKey: "dadsDadsDadHairC")
        newGene.setValue(labels[55].text, forKey: "dadsDadsDadAnemiaC")
        
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
            objectUpdate.setValue(labels[0].text, forKey: "momEyesC")
            objectUpdate.setValue(labels[1].text, forKey: "momSkinC")
            objectUpdate.setValue(labels[2].text, forKey: "momHairC")
            objectUpdate.setValue(labels[3].text, forKey: "momAnemiaC")
            objectUpdate.setValue(labels[4].text, forKey: "dadEyesC")
            objectUpdate.setValue(labels[5].text, forKey: "dadSkinC")
            objectUpdate.setValue(labels[6].text, forKey: "dadHairC")
            objectUpdate.setValue(labels[7].text, forKey: "dadAnemiaC")
            objectUpdate.setValue(labels[8].text, forKey: "momsMomEyesC")
            objectUpdate.setValue(labels[9].text, forKey: "momsMomSkinC")
            objectUpdate.setValue(labels[10].text, forKey: "momsMomHairC")
            objectUpdate.setValue(labels[11].text, forKey: "momsMomAnemiaC")
            objectUpdate.setValue(labels[12].text, forKey: "dadsMomEyesC")
            objectUpdate.setValue(labels[13].text, forKey: "dadsMomSkinC")
            objectUpdate.setValue(labels[14].text, forKey: "dadsMomHairC")
            objectUpdate.setValue(labels[15].text, forKey: "dadsMomAnemiaC")
            objectUpdate.setValue(labels[16].text, forKey: "momsDadEyesC")
            objectUpdate.setValue(labels[17].text, forKey: "momsDadSkinC")
            objectUpdate.setValue(labels[18].text, forKey: "momsDadHairC")
            objectUpdate.setValue(labels[19].text, forKey: "momsDadAnemiaC")
            objectUpdate.setValue(labels[20].text, forKey: "dadsDadEyesC")
            objectUpdate.setValue(labels[21].text, forKey: "dadsDadSkinC")
            objectUpdate.setValue(labels[22].text, forKey: "dadsDadHairC")
            objectUpdate.setValue(labels[23].text, forKey: "dadsDadAnemiaC")
            objectUpdate.setValue(labels[24].text, forKey: "momsMomsMomEyesC")
            objectUpdate.setValue(labels[25].text, forKey: "momsMomsMomSkinC")
            objectUpdate.setValue(labels[26].text, forKey: "momsMomsMomHairC")
            objectUpdate.setValue(labels[27].text, forKey: "momsMomsMomAnemiaC")
            objectUpdate.setValue(labels[28].text, forKey: "momsMomsDadEyesC")
            objectUpdate.setValue(labels[29].text, forKey: "momsMomsDadSkinC")
            objectUpdate.setValue(labels[30].text, forKey: "momsMomsDadHairC")
            objectUpdate.setValue(labels[31].text, forKey: "momsMomsDadAnemiaC")
            objectUpdate.setValue(labels[32].text, forKey: "momsDadsMomEyesC")
            objectUpdate.setValue(labels[33].text, forKey: "momsDadsMomSkinC")
            objectUpdate.setValue(labels[34].text, forKey: "momsDadsMomHairC")
            objectUpdate.setValue(labels[35].text, forKey: "momsDadsMomAnemiaC")
            objectUpdate.setValue(labels[36].text, forKey: "momsDadsDadEyesC")
            objectUpdate.setValue(labels[37].text, forKey: "momsDadsDadSkinC")
            objectUpdate.setValue(labels[38].text, forKey: "momsDadsDadHairC")
            objectUpdate.setValue(labels[39].text, forKey: "momsDadsDadAnemiaC")
            objectUpdate.setValue(labels[40].text, forKey: "dadsMomsMomEyesC")
            objectUpdate.setValue(labels[41].text, forKey: "dadsMomsMomSkinC")
            objectUpdate.setValue(labels[42].text, forKey: "dadsMomsMomHairC")
            objectUpdate.setValue(labels[43].text, forKey: "dadsMomsMomAnemiaC")
            objectUpdate.setValue(labels[44].text, forKey: "dadsMomsDadEyesC")
            objectUpdate.setValue(labels[45].text, forKey: "dadsMomsDadSkinC")
            objectUpdate.setValue(labels[46].text, forKey: "dadsMomsDadHairC")
            objectUpdate.setValue(labels[47].text, forKey: "dadsMomsDadAnemiaC")
            objectUpdate.setValue(labels[48].text, forKey: "dadsDadsMomEyesC")
            objectUpdate.setValue(labels[49].text, forKey: "dadsDadsMomSkinC")
            objectUpdate.setValue(labels[50].text, forKey: "dadsDadsMomHairC")
            objectUpdate.setValue(labels[51].text, forKey: "dadsDadsMomAnemiaC")
            objectUpdate.setValue(labels[52].text, forKey: "dadsDadsDadEyesC")
            objectUpdate.setValue(labels[53].text, forKey: "dadsDadsDadSkinC")
            objectUpdate.setValue(labels[54].text, forKey: "dadsDadsDadHairC")
            objectUpdate.setValue(labels[55].text, forKey: "dadsDadsDadAnemiaC")
            
            do {
                try managedContext.save()
            } catch {}
        } catch {}
    }
    
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        if thirdTF == false {
            createData()
        } else if thirdTF == true {
            updateData()
        }
        
        performSegue(withIdentifier: "toViewController", sender: nil)
    }
}
