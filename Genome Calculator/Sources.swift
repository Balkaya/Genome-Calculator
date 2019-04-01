//
//  Source.swift
//  Genome Calculator
//
//  Created by Can Balkaya on 11/20/18.
//  Copyright © 2018 Can Balkaya. All rights reserved.
//

import UIKit

let eyesColors = [
    "Black",
    "D. Brown",
    "Brown",
    "L. Brown",
    "Green",
    "Hazel",
    "Blue"
]

let skinColors = [
    "Black",
    "D. Brown",
    "Brown",
    "L. Brown",
    "White"
]

let hairColors = [
    "Black",
    "D. Brown",
    "Brown",
    "L. Brown",
    "Auburn",
    "Yellow",
    "Red"
]

let anemiaCases = [
    "Diseased",
    "Not Diseased"
]

var firstEyesColorName = ""
var secondEyesColorName = ""
var thirdEyesColorName = ""

var firstSkinColorName = ""
var secondSkinColorName = ""

var firstHairColorName = ""
var secondHairColorName = ""
var thirdHairColorName = ""

var firstCaseResult = ""
var secondCaseResult = ""
var thirdCaseResult = ""

let familyPersonsNames = ["Mom", "Dad", "Mom's Mom", "Mom's Dad", "Dad's Mom", "Dad's Dad", "Mom's Mom's Mom", "Mom's Mom's Dad", "Mom's Dad's Mom", "Mom's Dad's Dad", "Dad's Mom's Mom", "Dad's Mom's Dad", "Dad's Dad's Mom", "Dad's Dad's Dad"]

var inputForEyes = 0

var forBlackEyes = 2.0
var forDBrownEyes = 1.75
var forBrownEyes = 1.5
var forLBrownEyes = 1.25
var forGreenEyes = 1.0
var forBlueEyes = 1.0
var forHazelEyes = 1.0

var forBlackSkin = 2.0
var forDBrownSkin = 1.75
var forBrownSkin = 1.5
var forLBrownSkin = 1.25
var forWhiteSkin = 1.0

var forBlackHair = 2.0
var forDBrownHair = 1.75
var forBrownHair = 1.5
var forLBrownHair = 1.25
var forAuburnHair = 1.0
var forYellowHair = 1.0
var forRedHair = 1.0

var blackEyes = 0.0
var dBrownEyes = 0.0
var brownEyes = 0.0
var lBrownEyes = 0.0
var greenEyes = 0.0
var blueEyes = 0.0
var hazelEyes = 0.0

var blackSkin = 0.0
var dBrownSkin = 0.0
var brownSkin = 0.0
var lBrownSkin = 0.0
var whiteSkin = 0.0

var blackHair = 0.0
var dBrownHair = 0.0
var brownHair = 0.0
var lBrownHair = 0.0
var auburnHair = 0.0
var yellowHair = 0.0
var redHair = 0.0

var biggestForEyes = 0
var secondBiggestForEyes = 0

var biggestForSkin = 0
var secondBiggestForSkin = 0

var biggestForHair = 0
var secondBiggestForHair = 0

var greensPoints = 0
var hazelsPoints = 0
var bluesPoints = 0

var auburnsPoints = 0
var yellowsPoints = 0
var redsPoints = 0

var firstCase = 0 // 1, 2, 3 or 4
var secondCase = 0 // 1 or 2
var thirdCase = 0 // 1, 2, 3 or 4
