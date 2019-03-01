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
        
        if firstText == "Black" || thirdText == "Black" {
            blackEyes += 1.0
        } else if firstText == "D. Brown" || thirdText == "D. Brown" {
            dBrownEyes += 1.0
        } else if firstText == "Brown" || thirdText == "Brown" {
            brownEyes += 1.0
        } else if firstText == "L. Brown" || thirdText == "L. Brown" {
            lBrownEyes += 1.0
        } else if firstText == "Green" || thirdText == "Green" {
            greensPoints += 1
            greenEyes += 1.0
        } else if firstText == "Hazel" || thirdText == "Hazel" {
            hazelsPoints += 1
            hazelEyes += 1.0
        } else if firstText == "Blue" || thirdText == "Blue" {
            bluesPoints += 1
            blueEyes += 1.0
        }

        if secondText == "Black" || fourthText == "Black" {
            blackSkin += 1.0
        } else if secondText == "D. Brown" || fourthText == "D. Brown" {
            dBrownSkin += 1.0
        } else if secondText == "Brown" || fourthText == "Brown" {
            brownSkin += 1.0
        } else if secondText == "L. Brown" || fourthText == "L. Brown" {
            lBrownSkin += 1.0
        } else if secondText == "White" || fourthText == "White" {
            whiteSkin += 1.0
        }

        if fifthText == "Black" || seventhText == "Black" || ninthText == "Black" || eleventhText == "Black" {
            blackEyes += 0.5
        } else if fifthText == "D. Brown" || seventhText == "D. Brown" || ninthText == "D. Brown" || eleventhText == "D. Brown" {
            dBrownEyes += 0.5
        } else if fifthText == "Brown" || seventhText == "Brown" || ninthText == "Brown" || eleventhText == "Brown" {
            brownEyes += 0.5
        } else if fifthText == "L. Brown" || seventhText == "L. Brown" || ninthText == "L. Brown" || eleventhText == "L. Brown" {
            lBrownEyes += 0.5
        } else if fifthText == "Green" || seventhText == "Green" || ninthText == "Green" || eleventhText == "Green" {
            greensPoints += 1
            greenEyes += 0.5
        } else if fifthText == "Hazel" || seventhText == "Hazel" || ninthText == "Hazel" || eleventhText == "Hazel" {
            hazelsPoints += 1
            hazelEyes += 0.5
        } else if fifthText == "Blue" || seventhText == "Blue" || ninthText == "Blue" || eleventhText == "Blue" {
            bluesPoints += 1
            blueEyes += 0.5
        }

        if sixthText == "Black" || eighthText == "Black" || tenthText == "Black" || twelfthText == "Black" {
            blackSkin += 0.5
        } else if sixthText == "D. Brown" || eighthText == "D. Brown" || tenthText == "D. Brown" || twelfthText == "D. Brown" {
            dBrownSkin += 0.5
        } else if sixthText == "Brown" || eighthText == "Brown" || tenthText == "Brown" || twelfthText == "Brown" {
            brownSkin += 0.5
        } else if sixthText == "L. Brown" || eighthText == "L. Brown" || tenthText == "L. Brown" || twelfthText == "L. Brown" {
            lBrownSkin += 0.5
        } else if sixthText == "White" || eighthText == "White" || tenthText == "White" || twelfthText == "White" {
            whiteSkin += 0.5
        }

        if thirteenthText == "Black" || fifteenthText == "Black" || seventeenthText == "Black" || ninteenthText == "Black" || twentyFirstText == "Black" || twentyThirdText == "Black" || twentyFifthText == "Black" || twentySeventhText == "Black" {
            blackEyes += 0.25
        } else if thirteenthText == "D. Brown" || fifteenthText == "D. Brown" || seventeenthText == "D. Brown" || ninteenthText == "D. Brown" || twentyFirstText == "D. Brown" || twentyThirdText == "D. Brown" || twentyFifthText == "D. Brown" || twentySeventhText == "D. Brown" {
            dBrownEyes += 0.25
        } else if thirteenthText == "Brown" || fifteenthText == "Brown" || seventeenthText == "Brown" || ninteenthText == "Brown" || twentyFirstText == "Brown" || twentyThirdText == "Brown" || twentyFifthText == "Brown" || twentySeventhText == "Brown" {
            brownEyes += 0.25
        } else if thirteenthText == "L. Brown" || fifteenthText == "L. Brown" || seventeenthText == "L. Brown" || ninteenthText == "L. Brown" || twentyFirstText == "L. Brown" || twentyThirdText == "L. Brown" || twentyFifthText == "L. Brown" || twentySeventhText == "L. Brown" {
            lBrownEyes += 0.25
        } else if thirteenthText == "Green" || fifteenthText == "Green" || seventeenthText == "Green" || ninteenthText == "Green" || twentyFirstText == "Green" || twentyThirdText == "Green" || twentyFifthText == "Green" || twentySeventhText == "Green" {
            greensPoints += 1
            greenEyes += 0.25
        } else if thirteenthText == "Hazel" || fifteenthText == "Hazel" || seventeenthText == "Hazel" || ninteenthText == "Hazel" || twentyFirstText == "Hazel" || twentyThirdText == "Hazel" || twentyFifthText == "Hazel" || twentySeventhText == "Hazel" {
            hazelsPoints += 1
            hazelEyes += 0.25
        } else if thirteenthText == "Blue" || fifteenthText == "Blue" || seventeenthText == "Blue" || ninteenthText == "Blue" || twentyFirstText == "Blue" || twentyThirdText == "Blue" || twentyFifthText == "Blue" || twentySeventhText == "Blue" {
            bluesPoints += 1
            blueEyes += 0.25
        }

        if fourteenthText == "Black" || sixteenthText == "Black" || eighteenthText == "Black" || twentiethText == "Black" || twentySecondText == "Black" || twentyFourthText == "Black" || twentySixthText == "Black" || twentyEighthText == "Black"{
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
        
        if twentyNinthText == "Black" || thirtiethText == "Black" {
            blackHair += 1
        } else if twentyNinthText == "D. Brown" || thirtiethText == "D. Brown" {
            dBrownHair += 1
        } else if twentyNinthText == "Brown" || thirtiethText == "Brown" {
            brownHair += 1
        } else if twentyNinthText == "L. Brown" || thirtiethText == "L. Brown" {
            lBrownHair += 1
        } else if twentyNinthText == "Auburn" || thirtiethText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 1
        } else if twentyNinthText == "Yellow" || thirtiethText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 1
        } else if twentyNinthText == "Red" || thirtiethText == "Red" {
            redsPoints += 1
            redHair += 1
        }
        
        if thirtyFirstText == "Black" || thirtySecondText == "Black" || thirtyThirdText == "Black" || thirtyFourthText == "Black" {
            blackHair += 0.5
        } else if thirtyFirstText == "D. Brown" || thirtySecondText == "D. Brown" || thirtyThirdText == "D. Brown" || thirtyFourthText == "D. Brown" {
            dBrownHair += 0.5
        } else if thirtyFirstText == "Brown" || thirtySecondText == "Brown" || thirtyThirdText == "Brown" {
            brownHair += 0.5
        } else if thirtyFirstText == "L. Brown" || thirtySecondText == "L. Brown" || thirtyThirdText == "L. Brown" || thirtyFourthText == "L. Brown" {
            lBrownHair += 0.5
        } else if thirtyFirstText == "Auburn" || thirtySecondText == "Auburn" || thirtyThirdText == "Auburn" || thirtyFourthText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.5
        } else if thirtyFirstText == "Yellow" || thirtySecondText == "Yellow" || thirtyThirdText == "Yellow" || thirtyFourthText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.5
        } else if thirtyFirstText == "Red" || thirtySecondText == "Red" || thirtyThirdText == "Red" || thirtyFourthText == "Red" {
            redsPoints += 1
            redHair += 0.5
        }
        
        if thirtyFifthText == "Black" || thirtySixthText == "Black" || thirtySeventhText == "Black" || thirtyEightText == "Black" || thirtyNinthText == "Black" || fortiethText == "Black" || fourtyFirstText == "Black" || fourtySecondText == "Black" {
            blackHair += 0.25
        } else if thirtyFifthText == "D. Brown" || thirtySixthText == "D. Brown" || thirtySeventhText == "D. Brown" || thirtyEightText == "D. Brown" || thirtyNinthText == "D. Brown" || fortiethText == "D. Brown" || fourtyFirstText == "D. Brown" || fourtySecondText == "D. Brown" {
            dBrownHair += 0.25
        } else if thirtyFifthText == "Brown" || thirtySixthText == "Brown" || thirtySeventhText == "Brown" || thirtyEightText == "Brown" || thirtyNinthText == "Brown" || fortiethText == "Brown" || fourtyFirstText == "Brown" || fourtySecondText == "Brown" {
            brownHair += 0.25
        } else if thirtyFifthText == "L. Brown" || thirtySixthText == "L. Brown" || thirtySeventhText == "L. Brown" || thirtyEightText == "L. Brown" || thirtyNinthText == "L. Brown" || fortiethText == "L. Brown" || fourtyFirstText == "L. Brown" || fourtySecondText == "L. Brown" {
            lBrownHair += 0.25
        } else if thirtyFifthText == "Auburn" || thirtySixthText == "Auburn" || thirtySeventhText == "Auburn" || thirtyEightText == "Auburn" || thirtyNinthText == "Auburn" || fortiethText == "Auburn" || fourtyFirstText == "Auburn" || fourtySecondText == "Auburn" {
            auburnsPoints += 1
            auburnHair += 0.25
        } else if thirtyFifthText == "Yellow" || thirtySixthText == "Yellow" || thirtySeventhText == "Yellow" || thirtyEightText == "Yellow" || thirtyNinthText == "Yellow" || fortiethText == "Yellow" || fourtyFirstText == "Yellow" || fourtySecondText == "Yellow" {
            yellowsPoints += 1
            yellowHair += 0.25
        } else if thirtyFifthText == "Red" || thirtySixthText == "Red" || thirtySeventhText == "Red" || thirtyEightText == "Red" || thirtyNinthText == "Red" || fortiethText == "Red" || fourtyFirstText == "Red" || fourtySecondText == "Red" {
            redsPoints += 1
            redHair += 0.25
        }
        
        let eyesValue = Double(((blackEyes * forBlackEyes) + (dBrownEyes * forBrownEyes) + (brownEyes * forBrownEyes) + (lBrownEyes * forLBrownEyes) + (greenEyes * forGreenEyes) + (hazelEyes * forHazelEyes) + (blueEyes * forBlueEyes)) / (blackEyes + dBrownEyes + brownEyes + lBrownEyes + greenEyes + hazelEyes + blueEyes))
        
        let skinValue = Double(((blackSkin * forBlackSkin) + (dBrownSkin * forDBrownSkin) + (brownSkin * forBrownSkin) + (lBrownSkin * forLBrownSkin) + (whiteSkin * forWhiteSkin)) / (blackSkin + dBrownSkin + brownSkin + lBrownSkin + whiteSkin))
        
        let hairValue = Double(((blackHair * forBlackHair) + (dBrownHair * forDBrownHair) + (brownHair * forBrownHair) + (lBrownHair * forLBrownHair) + (auburnHair * forAuburnHair) + (yellowHair * forYellowHair) + (redHair * forRedHair)) / (blackHair + dBrownHair + brownHair + lBrownHair + auburnHair + yellowHair + redHair))
        
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
                biggestForEyes = (greensPoints * 100) / 14
                secondBiggestForEyes = biggestForEyes
                firstEyesColorName = "Green"
                secondEyesColorName = "Hazel"
                firstCase = 2
            } else if greensPoints == bluesPoints && greensPoints > hazelsPoints {
                biggestForEyes = (greensPoints * 100) / 14
                secondBiggestForEyes = biggestForEyes
                firstEyesColorName = "Green"
                secondEyesColorName = "Blue"
                firstCase = 2
            } else if hazelsPoints == bluesPoints && hazelsPoints > greensPoints {
                biggestForEyes = (hazelsPoints * 100) / 14
                secondBiggestForEyes = biggestForEyes
                firstEyesColorName = "Hazel"
                secondEyesColorName = "Blue"
                firstCase = 2
            }
        } else if eyesValue > 1 && 1.25 < eyesValue {
            
        }
        
        if eyesValue == 1.0 {
            if blueEyes == greenEyes {
                biggestForEyes = 50
                firstEyesColorName = "Blue"
                secondEyesColorName = "Green"
            } else if blueEyes == 6 {
                biggestForEyes = 100
                secondEyesColorName = "Blue"
            } else if greenEyes == 6 {
                biggestForEyes = 100
                secondEyesColorName = "Green"
            } else if blueEyes > greenEyes {

                biggestForEyes = Int((100 * blueEyes) / 6)

                secondEyesColorName = "Blue"

                inputForEyes = 2

            } else if blueEyes < greenEyes {

                biggestForEyes = Int((100 * greenEyes) / 6)

                secondEyesColorName = "Green"

                inputForEyes = 2

            }
        } else if eyesValue > 1.0 && 1.5 > eyesValue {
            let resultForFirstEyesValue = eyesValue - 1.0
            let resultForSecondEyesValue =  1.5 - eyesValue

            if resultForFirstEyesValue > resultForSecondEyesValue {

                secondEyesColorName = "Brown"

                biggestForEyes = Int(resultForFirstEyesValue * 200)

                inputForEyes = 2

            } else if resultForFirstEyesValue < resultForSecondEyesValue {
                if greenEyes == blueEyes && greenEyes == brownEyes {

                    firstEyesColorName = "Blue"
                    secondEyesColorName = "Green"

                    biggestForEyes = Int((((greenEyes + blueEyes) * 100) / (greenEyes + blueEyes + brownEyes)) / 2)

                    inputForEyes = 1
                } else if blueEyes > greenEyes && greenEyes > brownEyes {

                    secondEyesColorName = "Blue"

                    biggestForEyes = Int((blueEyes * 100) / (greenEyes + blueEyes + brownEyes))

                    inputForEyes = 2

                } else if greenEyes > blueEyes && greenEyes > brownEyes {

                    secondEyesColorName = "Green"

                    biggestForEyes = Int((greenEyes * 100) / (greenEyes + blueEyes + brownEyes))

                    inputForEyes = 2

                }
            } else if resultForFirstEyesValue == resultForSecondEyesValue {

                if blueEyes == greenEyes {

                    firstEyesColorName = "Blue"
                    secondEyesColorName = "Green"
                    thirdEyesColorName = "Brown"

                    biggestForEyes = 25
                    secondBiggestForEyes = 50

                } else if blueEyes == 3 {

                    firstEyesColorName = "Blue"
                    secondEyesColorName = "Brown"

                    biggestForEyes = 50

                    inputForEyes = 4

                } else if greenEyes == 3 {

                    firstEyesColorName = "Green"
                    secondEyesColorName = "Brown"

                    biggestForEyes = 50

                    inputForEyes = 4

                } else if blueEyes > greenEyes {
                    firstEyesColorName = "Brown"
                    secondEyesColorName = "Blue"

                    biggestForEyes = Int((50 * blueEyes) / 3)
                    secondBiggestForEyes = 50

                    inputForEyes = 5
                } else if blueEyes < greenEyes {
                    firstEyesColorName = "Brown"
                    secondEyesColorName = "Green"

                    biggestForEyes = Int((50 * greenEyes) / 3)
                    secondBiggestForEyes = 50

                    inputForEyes = 5
                }
            }
        } else if eyesValue > 1.5 && 2.0 > eyesValue {
            let resultForFirstEyesValue = eyesValue - 1.5
            let resultForSecondEyesValue = 2.0 - eyesValue

            if resultForFirstEyesValue > resultForSecondEyesValue {
                secondEyesColorName = "Black"

                biggestForEyes = Int(resultForFirstEyesValue * 200)

                inputForEyes = 2
            } else if resultForFirstEyesValue < resultForSecondEyesValue {

                secondEyesColorName = "Brown"

                biggestForEyes = Int(resultForSecondEyesValue * 200)

                inputForEyes = 2

            } else if resultForFirstEyesValue == resultForSecondEyesValue {

                firstEyesColorName = "Brown"
                secondEyesColorName = "Black"

                biggestForEyes = 50

            }
        } else if eyesValue == 2.0 {

            secondEyesColorName = "Black"

            biggestForEyes = 100

        } else if eyesValue == 1.5 {
            secondEyesColorName = "Brown"
            biggestForEyes = 100
        }

        if skinValue == 1.0 {
            firstSkinColorName = "White"
            biggestForSkin = 100
        } else if skinValue > 1.0 && 1.5 > skinValue {
            let resultForFirstSkinValue = skinValue - 1.0
            let resultForSecondSkinValue =  1.5 - skinValue

            if resultForFirstSkinValue > resultForSecondSkinValue {

                firstSkinColorName = "Brown"

                biggestForSkin = Int(resultForFirstSkinValue * 200)

            } else if resultForFirstSkinValue < resultForSecondSkinValue {

                firstSkinColorName = "White"

                biggestForSkin = Int(resultForSecondSkinValue * 200)

            } else if resultForFirstSkinValue == resultForSecondSkinValue {

                secondSkinColorName = "White"
                thirdSkinColorName = "Brown"

                biggestForSkin = 50

            }
        } else if skinValue > 1.5 && 2.0 > skinValue {

            let resultForFirstSkinValue = skinValue - 1.5
            let resultForSecondSkinValue =  2.0 - skinValue

            if resultForFirstSkinValue > resultForSecondSkinValue {

                firstSkinColorName = "Black"

                biggestForSkin = Int(resultForFirstSkinValue * 200)

            } else if resultForFirstSkinValue < resultForSecondSkinValue {

                firstSkinColorName = "Brown"

                biggestForSkin = Int(resultForSecondSkinValue * 200)

            } else if resultForFirstSkinValue == resultForSecondSkinValue {

                secondSkinColorName = "Brown"
                thirdSkinColorName = "Black"

                biggestForSkin = 50

            }
        } else if skinValue == 2.0 {

            firstSkinColorName = "Black"

            biggestForSkin = 100

        } else if skinValue == 1.5 {

            firstSkinColorName = "Brown"

            biggestForSkin = 100

        }

        inputTextView.isEditable = false

        if biggestForEyes == 50 && biggestForSkin == 50 {
            inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(secondSkinColorName)-skinned is \(biggestForSkin)%, \(secondEyesColorName)-skinned is \(biggestForSkin)%"
        } else if biggestForEyes != 50 && biggestForSkin == 50 {
            if biggestForEyes == secondBiggestForEyes {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(secondSkinColorName)-skinned is \(biggestForSkin)%, \(secondEyesColorName)-skinned is \(biggestForSkin)%"
            } else if biggestForEyes > 50 && inputForEyes == 2 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(secondSkinColorName)-skinned is \(biggestForSkin)%, \(secondEyesColorName)-skinned is \(biggestForSkin)%"
            } else if biggestForEyes > 50 && inputForEyes == 1 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(secondSkinColorName)-skinned is \(biggestForSkin)%, \(secondEyesColorName)-skinned is \(biggestForSkin)%"
            } else if biggestForEyes < 50 && inputForEyes == 3 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(secondBiggestForEyes)% and the probability of being \(secondSkinColorName)-skinned is \(biggestForSkin)%, \(secondEyesColorName)-skinned is \(biggestForSkin)%"
            } else if biggestForEyes == 100 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(secondSkinColorName)-skinned is \(biggestForSkin)%, \(secondEyesColorName)-skinned is \(biggestForSkin)%"
            } else if thirdEyesColorName == "Brown" {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%,\(secondEyesColorName)-eyed \(biggestForEyes)%,\(thirdEyesColorName)-eyed \(secondBiggestForEyes)% and the probability of being \(secondSkinColorName)-skinned is \(biggestForSkin)%, \(secondEyesColorName)-skinned is \(biggestForSkin)%"
            } else if inputForEyes == 4 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%,\(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(secondSkinColorName)-skinned is \(biggestForSkin)%, \(secondEyesColorName)-skinned is \(biggestForSkin)%"
            } else if inputForEyes == 5 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(secondBiggestForEyes)% and the probability of being \(secondSkinColorName)-skinned is \(biggestForSkin)%, \(secondEyesColorName)-skinned is \(biggestForSkin)%"
            }
        } else if biggestForEyes == 50 && biggestForSkin != 50 {
            inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(firstSkinColorName)-skinned is \(biggestForSkin)%"
        } else if biggestForEyes != 50 && biggestForSkin != 50 {
            if biggestForEyes == secondBiggestForEyes {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(firstSkinColorName)-skinned is \(biggestForSkin)%"
            } else if biggestForEyes > 50 && inputForEyes == 2 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(firstSkinColorName)-skinned is \(biggestForSkin)%"
            } else if biggestForEyes > 50 && inputForEyes == 1 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(firstSkinColorName)-skinned is \(biggestForSkin)%"
            } else if biggestForEyes < 50 && inputForEyes == 3 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(secondBiggestForEyes)% and the probability of being \(firstSkinColorName)-skinned is \(biggestForSkin)%"
            } else if biggestForEyes == 100 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(firstSkinColorName)-skinned is \(biggestForSkin)%"
            } else if thirdEyesColorName == "Brown" {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%,\(secondEyesColorName)-eyed \(biggestForEyes)%,\(thirdEyesColorName)-eyed \(secondBiggestForEyes)% and the probability of being \(firstSkinColorName)-skinned is \(biggestForSkin)%"
            } else if inputForEyes == 4 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(firstSkinColorName)-skinned is \(biggestForSkin)%"
            } else if inputForEyes == 5 {
                inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(secondBiggestForEyes)% and the probability of being \(firstSkinColorName)-skinned is \(biggestForSkin)%"
            }
        } else if biggestForEyes == 50 && biggestForSkin != 50 {
            inputTextView.text = "The probability of being born is the highest probability of the child being \(firstEyesColorName)-eyed \(biggestForEyes)%, \(secondEyesColorName)-eyed \(biggestForEyes)% and the probability of being \(firstSkinColorName)-skinned is \(biggestForSkin)%"
        }
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
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
        
        performSegue(withIdentifier: "toViewController", sender: nil)
    }
}
