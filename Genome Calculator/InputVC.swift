//
//  İnputVC.swift
//  Genome Calculator
//
//  Created by Can Balkaya on 11/19/18.
//  Copyright © 2018 Can Balkaya. All rights reserved.
//

import UIKit
import CoreData

class InputVC: UIViewController {
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
    
    @IBOutlet weak var nameLabel: UILabel!
    
    // Mom
    @IBOutlet weak var momFirstLabel: UILabel!
    @IBOutlet weak var momSecondLabel: UILabel!
    @IBOutlet weak var momThirdLabel: UILabel!
    
    // Dad
    @IBOutlet weak var dadFirstLabel: UILabel!
    @IBOutlet weak var dadSecondLabel: UILabel!
    @IBOutlet weak var dadThirdLabel: UILabel!
    
    // Mom's Mom
    @IBOutlet weak var momsMomFirstLabel: UILabel!
    @IBOutlet weak var momsMomSecondLabel: UILabel!
    @IBOutlet weak var momsMomThirdLabel: UILabel!
    
    // Mom's Dad
    @IBOutlet weak var momsDadFirstLabel: UILabel!
    @IBOutlet weak var momsDadSecondLabel: UILabel!
    @IBOutlet weak var momsDadThirdLabel: UILabel!
    
    // Dad's Mom
    @IBOutlet weak var dadsMomFirstLabel: UILabel!
    @IBOutlet weak var dadsMomSecondLabel: UILabel!
    @IBOutlet weak var dadsMomThirdLabel: UILabel!
    
    // Dad's Dad
    @IBOutlet weak var dadsDadFirstLabel: UILabel!
    @IBOutlet weak var dadsDadSecondLabel: UILabel!
    @IBOutlet weak var dadsDadThirdLabel: UILabel!
    
    // Mom's Mom's Mom
    @IBOutlet weak var momsMomsMomFirstLabel: UILabel!
    @IBOutlet weak var momsMomsMomSecondLabel: UILabel!
    @IBOutlet weak var momsMomsMomThirdLabel: UILabel!
    
    // Mom's Mom's Dad
    @IBOutlet weak var momsMomsDadFirstLabel: UILabel!
    @IBOutlet weak var momsMomsDadSecondLabel: UILabel!
    @IBOutlet weak var momsMomsDadThirdLabel: UILabel!
    
    // Mom's Dad's Mom
    @IBOutlet weak var momsDadsMomFirstLabel: UILabel!
    @IBOutlet weak var momsDadsMomSecondLabel: UILabel!
    @IBOutlet weak var momsDadsMomThirdLabel: UILabel!
    
    // Mom's Dad's Dad
    @IBOutlet weak var momsDadsDadFirstLabel: UILabel!
    @IBOutlet weak var momsDadsDadSecondLabel: UILabel!
    @IBOutlet weak var momsDadsDadThirdLabel: UILabel!
    
    // Dad's Mom's Mom
    @IBOutlet weak var dadsMomsMomFirstLabel: UILabel!
    @IBOutlet weak var dadsMomsMomSecondLabel: UILabel!
    @IBOutlet weak var dadsMomsMomThirdLabel: UILabel!
    
    // Dad's Mom's Dad
    @IBOutlet weak var dadsMomsDadFirstLabel: UILabel!
    @IBOutlet weak var dadsMomsDadSecondLabel: UILabel!
    @IBOutlet weak var dadsMomsDadThirdLabel: UILabel!
    
    // Dad's Dad's Mom
    @IBOutlet weak var dadsDadsMomFirstLabel: UILabel!
    @IBOutlet weak var dadsDadsMomSecondLabel: UILabel!
    @IBOutlet weak var dadsDadsMomThirdLabel: UILabel!
    
    // Dad's Dad's Dad
    @IBOutlet weak var dadsDadsDadFirstLabel: UILabel!
    @IBOutlet weak var dadsDadsDadSecondLabel: UILabel!
    @IBOutlet weak var dadsDadsDadThirdLabel: UILabel!
    
    // input
    @IBOutlet weak var inputTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        momFirstLabel.text = firstText
        momSecondLabel.text = secondText
        momThirdLabel.text = twentyNinthText
        dadFirstLabel.text = thirdText
        dadSecondLabel.text = fourthText
        dadThirdLabel.text = thirtiethText
        momsMomFirstLabel.text = fifthText
        momsMomSecondLabel.text = sixthText
        momsMomThirdLabel.text = thirtyFirstText
        momsDadFirstLabel.text = seventhText
        momsDadSecondLabel.text = eighthText
        momsDadThirdLabel.text = thirtySecondText
        dadsMomFirstLabel.text = ninthText
        dadsMomSecondLabel.text = tenthText
        dadsMomThirdLabel.text = thirtyThirdText
        dadsDadFirstLabel.text = eleventhText
        dadsDadSecondLabel.text = twelfthText
        dadsDadThirdLabel.text = thirtyFourthText
        momsMomsMomFirstLabel.text = thirteenthText
        momsMomsMomSecondLabel.text = fourteenthText
        momsMomsMomThirdLabel.text = thirtyFifthText
        momsMomsDadFirstLabel.text = fifteenthText
        momsMomsDadSecondLabel.text = sixteenthText
        momsMomsDadThirdLabel.text = thirtySixthText
        momsDadsMomFirstLabel.text = seventeenthText
        momsDadsMomSecondLabel.text = eighteenthText
        momsDadsMomThirdLabel.text = thirtySeventhText
        momsDadsDadFirstLabel.text = ninteenthText
        momsDadsDadSecondLabel.text = twentiethText
        momsDadsDadThirdLabel.text = thirtyEightText
        dadsMomsMomFirstLabel.text = twentyFirstText
        dadsMomsMomSecondLabel.text = twentySecondText
        dadsMomsMomThirdLabel.text = thirtyNinthText
        dadsMomsDadFirstLabel.text = twentyThirdText
        dadsMomsDadSecondLabel.text = twentyFourthText
        dadsMomsDadThirdLabel.text = fortiethText
        dadsDadsMomFirstLabel.text = twentyFifthText
        dadsDadsMomSecondLabel.text = twentySixthText
        dadsDadsMomThirdLabel.text = fourtyFirstText
        dadsDadsDadFirstLabel.text = twentySeventhText
        dadsDadsDadSecondLabel.text = twentyEighthText
        dadsDadsDadThirdLabel.text = fourtySecondText
        
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

        if fourteenthText == "Black" || sixteenthText == "Black" || eighteenthText == "Black" || twentiethText == "Black" || twentySecondText == "Black" || twentyFourthText == "Black" || twentySixthText == "Black" || twentyEighthText == "Black" {
            blackSkin += 0.25
        } else if fourteenthText == "D. Brown" || sixteenthText == "D. Brown" || eighteenthText == "D. Brown" || twentiethText == "D. Brown" || twentySecondText == "D. Brown" || twentyFourthText == "D. Brown" || twentySixthText == "D. Brown" || twentyEighthText == "D. Brown" {
            dBrownSkin += 0.25
        } else if fourteenthText == "Brown" || sixteenthText == "Brown" || eighteenthText == "Brown" || twentiethText == "Brown" || twentySecondText == "Brown" || twentyFourthText == "Brown" || twentySixthText == "Brown" || twentyEighthText == "Brown" {
            brownSkin += 0.25
        } else if fourteenthText == "L. Brown" || sixteenthText == "L. Brown" || eighteenthText == "L. Brown" || twentiethText == "L. Brown" || twentySecondText == "L. Brown" || twentyFourthText == "L. Brown" || twentySixthText == "L. Brown" || twentyEighthText == "L. Brown" {
            lBrownSkin += 0.25
        } else if fourteenthText == "White" || sixteenthText == "White" || eighteenthText == "White" || twentiethText == "White" || twentySecondText == "White" || twentyFourthText == "White" || twentySixthText == "White" || twentyEighthText == "White" {
            whiteSkin += 0.25
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
                biggestForEyes = 100 - (greensPoints * 100) / 14
                firstEyesColorName = "Green"
                firstCase = 1
            } else if hazelsPoints > greensPoints && hazelsPoints > bluesPoints {
                biggestForEyes = 100 - (hazelsPoints * 100) / 14
                firstEyesColorName = "Hazel"
                firstCase = 1
            } else if bluesPoints > greensPoints && bluesPoints > hazelsPoints {
                biggestForEyes = 100 - (bluesPoints * 100) / 14
                firstEyesColorName = "Blue"
                firstCase = 1
            } else if greensPoints == hazelsPoints && greensPoints > bluesPoints {
                biggestForEyes = 100 - (greensPoints * 100) / 14
                firstEyesColorName = "Green"
                secondEyesColorName = "Hazel"
                firstCase = 2
            } else if greensPoints == bluesPoints && greensPoints > hazelsPoints {
                biggestForEyes = 100 - (greensPoints * 100) / 14
                firstEyesColorName = "Green"
                secondEyesColorName = "Blue"
                firstCase = 2
            } else if hazelsPoints == bluesPoints && hazelsPoints > greensPoints {
                biggestForEyes = 100 - (hazelsPoints * 100) / 14
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
                    biggestForEyes = (greensPoints * Int((resultForSecondEyesValue * 100) / 0.25)) / 14
                    firstCase = 1
                } else if hazelsPoints > greensPoints && hazelsPoints > bluesPoints {
                    firstEyesColorName = "Hazel"
                    biggestForEyes = (hazelsPoints * Int((resultForSecondEyesValue * 100) / 0.25)) / 14
                    firstCase = 1
                } else if bluesPoints > greensPoints && bluesPoints > hazelsPoints {
                    firstEyesColorName = "Blue"
                    biggestForEyes = (bluesPoints * Int((resultForSecondEyesValue * 100) / 0.25)) / 14
                    firstCase = 1
                } else if greensPoints == hazelsPoints && greensPoints > bluesPoints {
                    firstSkinColorName = "Green"
                    secondEyesColorName = "Hazel"
                    biggestForEyes = ((greensPoints * Int((resultForSecondEyesValue * 100) / 0.25)) / 14) / 2
                    firstCase = 2
                } else if greensPoints == bluesPoints && greensPoints > hazelsPoints {
                    firstSkinColorName = "Green"
                    secondEyesColorName = "Blue"
                    biggestForEyes = ((greensPoints * Int((resultForSecondEyesValue * 100) / 0.25)) / 14) / 2
                    firstCase = 2
                } else if hazelsPoints == bluesPoints && hazelsPoints > greensPoints {
                    firstSkinColorName = "Hazel"
                    secondEyesColorName = "Blue"
                    biggestForEyes = ((hazelsPoints * Int((resultForSecondEyesValue * 100) / 0.25)) / 14) / 2
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
                biggestForEyes = Int(100 - (100 * resultForSecondEyesValue) / 0.25)
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
                biggestForEyes = Int(100 - (100 * resultForSecondEyesValue) / 0.25)
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
                biggestForEyes = Int(100 - (100 * resultForSecondEyesValue) / 0.25)
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
                biggestForSkin = Int((100 * skinValue) / 1.25)
                secondCase = 1
            } else if resultForFirstSkinValue < resultForSecondSkinValue {
                firstSkinColorName = "White"
                biggestForSkin = Int(100 - (100 * resultForFirstSkinValue) / 0.25)
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
                biggestForSkin = Int(100 - (100 * resultForFirstSkinValue) / 0.25)
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
                biggestForSkin = Int(100 - (100 * resultForSecondSkinValue) / 0.25)
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
                biggestForSkin = Int(100 - (100 * resultForFirstSkinValue) / 0.25)
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
                biggestForHair = 100 - (auburnsPoints * 100) / 14
                firstHairColorName = "Auburn"
                thirdCase = 1
            } else if yellowsPoints > auburnsPoints && yellowsPoints > redsPoints {
                biggestForHair = 100 - (yellowsPoints * 100) / 14
                firstHairColorName = "Yellow"
                thirdCase = 1
            } else if redsPoints > auburnsPoints && redsPoints > yellowsPoints {
                biggestForHair = 100 - (redsPoints * 100) / 14
                firstHairColorName = "Red"
                thirdCase = 1
            } else if auburnsPoints == yellowsPoints && auburnsPoints > redsPoints {
                biggestForHair = 100 - (auburnsPoints * 100) / 14
                firstHairColorName = "Auburn"
                secondHairColorName = "Yellow"
                thirdCase = 2
            } else if auburnsPoints == redsPoints && auburnsPoints > yellowsPoints {
                biggestForHair = 100 - (auburnsPoints * 100) / 14
                firstHairColorName = "Auburn"
                secondHairColorName = "Red"
                thirdCase = 2
            } else if yellowsPoints == redsPoints && yellowsPoints > auburnsPoints {
                biggestForHair = 100 - (yellowsPoints * 100) / 14
                firstHairColorName = "Yellow"
                secondHairColorName = "Red"
                thirdCase = 2
            }
        } else if hairValue > 1 && 1.25 > hairValue {
            let resultForFirstHairValue = hairValue - 1
            let resultForSecondHairValue = 1.25 - hairValue
            
            if resultForFirstHairValue > resultForSecondHairValue {
                firstHairColorName = "L. Brown"
                biggestForHair = Int(100 - (100 * resultForSecondHairValue) / 0.25)
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
                    biggestForHair = ((auburnsPoints * Int((resultForSecondHairValue * 100) / 0.25)) / 14) / 2
                    thirdCase = 2
                } else if auburnsPoints == redsPoints && auburnsPoints > yellowsPoints {
                    firstHairColorName = "Auburn"
                    secondHairColorName = "Red"
                    biggestForHair = ((auburnsPoints * Int((resultForSecondHairValue * 100) / 0.25)) / 14) / 2
                    thirdCase = 2
                } else if yellowsPoints == redsPoints && yellowsPoints > auburnsPoints {
                    firstHairColorName = "Yellow"
                    secondHairColorName = "Red"
                    biggestForHair = ((yellowsPoints * Int((resultForSecondHairValue * 100) / 0.25)) / 14) / 2
                    thirdCase = 2
                }
            } else if resultForFirstHairValue == resultForSecondHairValue {
                if auburnsPoints > yellowsPoints && auburnsPoints > redsPoints {
                    firstHairColorName = "L. Brown"
                    secondHairColorName = "Green"
                    biggestForHair = 50
                    secondBiggestForHair = 100 - (auburnsPoints * 50) / 14
                    thirdCase = 3
                } else if yellowsPoints > auburnsPoints && yellowsPoints > redsPoints {
                    firstHairColorName = "L. Brown"
                    secondHairColorName = "Hazel"
                    biggestForHair = 50
                    secondBiggestForHair = 100 - (yellowsPoints * 50) / 14
                    thirdCase = 3
                } else if redsPoints > auburnsPoints && redsPoints > yellowsPoints {
                    firstHairColorName = "L. Brown"
                    secondHairColorName = "Blue"
                    biggestForHair = 50
                    secondBiggestForHair = 100 - (redsPoints * 50) / 14
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
                biggestForHair = Int((100 * hairValue) / 1.5)
                thirdCase = 1
            } else if resultForFirstHairValue < resultForSecondHairValue {
                firstHairColorName = "L. Brown"
                biggestForHair = Int((100 * hairValue) / 1.25)
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
                biggestForHair = Int((100 * hairValue) / 1.5)
                thirdCase = 1
            } else if resultForFirstHairValue < resultForSecondHairValue {
                firstHairColorName = "Brown"
                biggestForHair = Int((100 * hairValue) / 1.75)
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
                biggestForHair = Int((100 * hairValue) / 1.75)
                thirdCase = 1
            } else if resultForFirstHairValue < resultForSecondHairValue {
                firstHairColorName = "D. Brown"
                biggestForHair = Int((100 * hairValue) / 2)
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
    
    func createData() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newGene = NSEntityDescription.insertNewObject(forEntityName: "Genes", into: context)
        
        newGene.setValue(nameLabel.text, forKey: "name")
        newGene.setValue(inputTextView.text, forKey: "textView")
        newGene.setValue(momFirstLabel.text, forKey: "momEyesC")
        newGene.setValue(momSecondLabel.text, forKey: "momSkinC")
        newGene.setValue(momThirdLabel.text, forKey: "momHairC")
        newGene.setValue(dadFirstLabel.text, forKey: "dadEyesC")
        newGene.setValue(dadSecondLabel.text, forKey: "dadSkinC")
        newGene.setValue(dadThirdLabel.text, forKey: "dadHairC")
        newGene.setValue(momsMomFirstLabel.text, forKey: "momsMomEyesC")
        newGene.setValue(momsMomSecondLabel.text, forKey: "momsMomSkinC")
        newGene.setValue(momsMomThirdLabel.text, forKey: "momsMomHairC")
        newGene.setValue(momsDadFirstLabel.text, forKey: "dadsMomEyesC")
        newGene.setValue(momsDadSecondLabel.text, forKey: "dadsMomSkinC")
        newGene.setValue(momsDadThirdLabel.text, forKey: "dadsMomHairC")
        newGene.setValue(dadsMomFirstLabel.text, forKey: "momsDadEyesC")
        newGene.setValue(dadsMomSecondLabel.text, forKey: "momsDadSkinC")
        newGene.setValue(dadsMomThirdLabel.text, forKey: "momsDadHairC")
        newGene.setValue(dadsDadFirstLabel.text, forKey: "dadsDadEyesC")
        newGene.setValue(dadsDadSecondLabel.text, forKey: "dadsDadSkinC")
        newGene.setValue(dadsDadThirdLabel.text, forKey: "dadsDadHairC")
        newGene.setValue(momsMomsMomFirstLabel.text, forKey: "momsMomsMomEyesC")
        newGene.setValue(momsMomsMomSecondLabel.text, forKey: "momsMomsMomSkinC")
        newGene.setValue(momsMomsMomThirdLabel.text, forKey: "momsMomsMomHairC")
        newGene.setValue(momsMomsDadFirstLabel.text, forKey: "momsMomsDadEyesC")
        newGene.setValue(momsMomsDadSecondLabel.text, forKey: "momsMomsDadSkinC")
        newGene.setValue(momsMomsDadThirdLabel.text, forKey: "momsMomsDadHairC")
        newGene.setValue(momsDadsMomFirstLabel.text, forKey: "momsDadsMomEyesC")
        newGene.setValue(momsDadsMomSecondLabel.text, forKey: "momsDadsMomSkinC")
        newGene.setValue(momsDadsMomThirdLabel.text, forKey: "momsDadsMomHairC")
        newGene.setValue(momsDadsDadFirstLabel.text, forKey: "momsDadsDadEyesC")
        newGene.setValue(momsDadsDadSecondLabel.text, forKey: "momsDadsDadSkinC")
        newGene.setValue(momsDadsDadThirdLabel.text, forKey: "momsDadsDadHairC")
        newGene.setValue(dadsMomsMomFirstLabel.text, forKey: "dadsMomsMomEyesC")
        newGene.setValue(dadsMomsMomSecondLabel.text, forKey: "dadsMomsMomSkinC")
        newGene.setValue(dadsMomsMomThirdLabel.text, forKey: "dadsMomsMomHairC")
        newGene.setValue(dadsMomsDadFirstLabel.text, forKey: "dadsMomsDadEyesC")
        newGene.setValue(dadsMomsDadSecondLabel.text, forKey: "dadsMomsDadSkinC")
        newGene.setValue(dadsMomsDadThirdLabel.text, forKey: "dadsMomsDadHairC")
        newGene.setValue(dadsDadsMomFirstLabel.text, forKey: "dadsDadsMomEyesC")
        newGene.setValue(dadsDadsMomSecondLabel.text, forKey: "dadsDadsMomSkinC")
        newGene.setValue(dadsDadsMomThirdLabel.text, forKey: "dadsDadsMomHairC")
        newGene.setValue(dadsDadsDadFirstLabel.text, forKey: "dadsDadsDadEyesC")
        newGene.setValue(dadsDadsDadSecondLabel.text, forKey: "dadsDadsDadSkinC")
        newGene.setValue(dadsDadsDadThirdLabel.text, forKey: "dadsDadsDadHairC")
        
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
            objectUpdate.setValue(momFirstLabel.text, forKey: "momEyesC")
            objectUpdate.setValue(momSecondLabel.text, forKey: "momSkinC")
            objectUpdate.setValue(momThirdLabel.text, forKey: "momHairC")
            objectUpdate.setValue(dadFirstLabel.text, forKey: "dadEyesC")
            objectUpdate.setValue(dadSecondLabel.text, forKey: "dadSkinC")
            objectUpdate.setValue(dadThirdLabel.text, forKey: "dadHairC")
            objectUpdate.setValue(momsMomFirstLabel.text, forKey: "momsMomEyesC")
            objectUpdate.setValue(momsMomSecondLabel.text, forKey: "momsMomSkinC")
            objectUpdate.setValue(momsMomThirdLabel.text, forKey: "momsMomHairC")
            objectUpdate.setValue(momsDadFirstLabel.text, forKey: "dadsMomEyesC")
            objectUpdate.setValue(momsDadSecondLabel.text, forKey: "dadsMomSkinC")
            objectUpdate.setValue(momsDadThirdLabel.text, forKey: "dadsMomHairC")
            objectUpdate.setValue(dadsMomFirstLabel.text, forKey: "momsDadEyesC")
            objectUpdate.setValue(dadsMomSecondLabel.text, forKey: "momsDadSkinC")
            objectUpdate.setValue(dadsMomThirdLabel.text, forKey: "momsDadHairC")
            objectUpdate.setValue(dadsDadFirstLabel.text, forKey: "dadsDadEyesC")
            objectUpdate.setValue(dadsDadSecondLabel.text, forKey: "dadsDadSkinC")
            objectUpdate.setValue(dadsDadThirdLabel.text, forKey: "dadsDadHairC")
            objectUpdate.setValue(momsMomsMomFirstLabel.text, forKey: "momsMomsMomEyesC")
            objectUpdate.setValue(momsMomsMomSecondLabel.text, forKey: "momsMomsMomSkinC")
            objectUpdate.setValue(momsMomsMomThirdLabel.text, forKey: "momsMomsMomHairC")
            objectUpdate.setValue(momsMomsDadFirstLabel.text, forKey: "momsMomsDadEyesC")
            objectUpdate.setValue(momsMomsDadSecondLabel.text, forKey: "momsMomsDadSkinC")
            objectUpdate.setValue(momsMomsDadThirdLabel.text, forKey: "momsMomsDadHairC")
            objectUpdate.setValue(momsDadsMomFirstLabel.text, forKey: "momsDadsMomEyesC")
            objectUpdate.setValue(momsDadsMomSecondLabel.text, forKey: "momsDadsMomSkinC")
            objectUpdate.setValue(momsDadsMomThirdLabel.text, forKey: "momsDadsMomHairC")
            objectUpdate.setValue(momsDadsDadFirstLabel.text, forKey: "momsDadsDadEyesC")
            objectUpdate.setValue(momsDadsDadSecondLabel.text, forKey: "momsDadsDadSkinC")
            objectUpdate.setValue(momsDadsDadThirdLabel.text, forKey: "momsDadsDadHairC")
            objectUpdate.setValue(dadsMomsMomFirstLabel.text, forKey: "dadsMomsMomEyesC")
            objectUpdate.setValue(dadsMomsMomSecondLabel.text, forKey: "dadsMomsMomSkinC")
            objectUpdate.setValue(dadsMomsMomThirdLabel.text, forKey: "dadsMomsMomHairC")
            objectUpdate.setValue(dadsMomsDadFirstLabel.text, forKey: "dadsMomsDadEyesC")
            objectUpdate.setValue(dadsMomsDadSecondLabel.text, forKey: "dadsMomsDadSkinC")
            objectUpdate.setValue(dadsMomsDadThirdLabel.text, forKey: "dadsMomsDadHairC")
            objectUpdate.setValue(dadsDadsMomFirstLabel.text, forKey: "dadsDadsMomEyesC")
            objectUpdate.setValue(dadsDadsMomSecondLabel.text, forKey: "dadsDadsMomSkinC")
            objectUpdate.setValue(dadsDadsMomThirdLabel.text, forKey: "dadsDadsMomHairC")
            objectUpdate.setValue(dadsDadsDadFirstLabel.text, forKey: "dadsDadsDadEyesC")
            objectUpdate.setValue(dadsDadsDadSecondLabel.text, forKey: "dadsDadsDadSkinC")
            objectUpdate.setValue(dadsDadsDadThirdLabel.text, forKey: "dadsDadsDadHairC")
            
            do {
                try managedContext.save()
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        if thirdTF == false {
            createData()
        } else if thirdTF == true {
            updateData()
        }
        
        performSegue(withIdentifier: "toViewController", sender: nil)
    }
}
