//
//  AddVC.swift
//  Genome Calculator
//
//  Created by Can Balkaya on 11/19/18.
//  Copyright © 2018 Can Balkaya. All rights reserved.
//

import UIKit
import CoreData

class AddVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet var textFields: [UITextField]!
    
//    var textFieldsForEyes: [UITextField]!
//    var textFieldsForSkin: [UITextField]!
//    var textFieldsForHair: [UITextField]!
//    var textFieldsForAnemia: [UITextField]!
    
    var chosenGene = ""
    var secondTF = false
    
    var nameText = ""
    var eyeText = ""
    var skinText = ""
    var hairText = ""
    var anemiaText = ""
    
    var textOne = ""
    var textTwo = ""
    var textThree = ""
    var textFour = ""
    var textFive = ""
    var textSix = ""
    var textSeven = ""
    var textEight = ""
    var textNine = ""
    var textTen = ""
    var textEleven = ""
    var textTwelve = ""
    var textThirteen = ""
    var textFourteen = ""
    var textFifteen = ""
    var textSixteen = ""
    var textSeventeen = ""
    var textEighteen = ""
    var textNinteen = ""
    var textTwenty = ""
    var textTwentyOne = ""
    var textTwentyTwo = ""
    var textTwentyThree = ""
    var textTwentyFour = ""
    var textTwentyFive = ""
    var textTwentySix = ""
    var textTwentySeven = ""
    var textTwentyEight = ""
    var textTwentyNine = ""
    var textThirty = ""
    var textThirtyOne = ""
    var textThirtyTwo = ""
    var textThirtyThree = ""
    var textThirtyFour = ""
    var textThirtyFive = ""
    var textThirtySix = ""
    var textThirtySeven = ""
    var textThirtyEight = ""
    var textThirtyNine = ""
    var textFourty = ""
    var textFourtyOne = ""
    var textFourtyTwo = ""
    var textFourtyThree = ""
    var textFourtyFour = ""
    var textFourtyFive = ""
    var textFourtySix = ""
    var textFourtySeven = ""
    var textFourtyEight = ""
    var textFourtyNine = ""
    var textFifty = ""
    var textFiftyOne = ""
    var textFiftyTwo = ""
    var textFiftyThree = ""
    var textFiftyFour = ""
    var textFiftyFive = ""
    var textFiftySix = ""
    
    let eyePicker = UIPickerView()
    let skinPicker = UIPickerView()
    let hairPicker = UIPickerView()
    let anemiaPicker = UIPickerView()
    
    let firstPicker = UIPickerView()
    let secondPicker = UIPickerView()
    let thirdPicker = UIPickerView()
    let fourthPicker = UIPickerView()
    let fifthPicker = UIPickerView()
    let sixthPicker = UIPickerView()
    let seventhPicker = UIPickerView()
    let eighthPicker = UIPickerView()
    let ninthPicker = UIPickerView()
    let tenthPicker = UIPickerView()
    let eleventhPicker = UIPickerView()
    let twelfthPicker = UIPickerView()
    let thirteenthPicker = UIPickerView()
    let fourteenthPicker = UIPickerView()
    let fifteenthPicker = UIPickerView()
    let sixteenthPicker = UIPickerView()
    let seventeenthPicker = UIPickerView()
    let eighteenthPicker = UIPickerView()
    let ninteenthPicker = UIPickerView()
    let twentiethPicker = UIPickerView()
    let twentyFirstPicker = UIPickerView()
    let twentySecondPicker = UIPickerView()
    let twentyThirthPicker = UIPickerView()
    let twentyFourthPicker = UIPickerView()
    let twentyFifthPicker = UIPickerView()
    let twentySixthPicker = UIPickerView()
    let twentySeventhPicker = UIPickerView()
    let twentyEighthPicker = UIPickerView()
    let twentyNinthPicker = UIPickerView()
    let thirtiethPicker = UIPickerView()
    let thirtyFirstPicker = UIPickerView()
    let thirtySecondPicker = UIPickerView()
    let thirtyThirdPicker = UIPickerView()
    let thirtyFourthPicker = UIPickerView()
    let thirtyFifthPicker = UIPickerView()
    let thirtySixthPicker = UIPickerView()
    let thirtySeventhPicker = UIPickerView()
    let thirtyEighthPicker = UIPickerView()
    let thirtyNinthPicker = UIPickerView()
    let fortiethPicker = UIPickerView()
    let fourtyFirstPicker = UIPickerView()
    let fourtySecondPicker = UIPickerView()
    let fourtyThirdPicker = UIPickerView()
    let fourtyFourthPicker = UIPickerView()
    let fourtyFifthPicker = UIPickerView()
    let fourtySixthPicker = UIPickerView()
    let fourtySeventhPicker = UIPickerView()
    let fourtyEighthPicker = UIPickerView()
    let fourtyNinthPicker = UIPickerView()
    let fiftiethPicker = UIPickerView()
    let fiftyFirstPicker = UIPickerView()
    let fiftySecondPicker = UIPickerView()
    let fiftyThirdPicker = UIPickerView()
    let fiftyFourthPicker = UIPickerView()
    let fiftyFifthPicker = UIPickerView()
    let fiftySixthPicker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGenomPicker()
        createToolbar()
        
        if chosenGene != "" {
            retrieveData()
        }
        
        firstPicker.delegate = self
        secondPicker.delegate = self
        thirdPicker.delegate = self
        fourthPicker.delegate = self
        fifthPicker.delegate = self
        sixthPicker.delegate = self
        seventhPicker.delegate = self
        eighthPicker.delegate = self
        ninthPicker.delegate = self
        tenthPicker.delegate = self
        eleventhPicker.delegate = self
        twelfthPicker.delegate = self
        thirteenthPicker.delegate = self
        fourteenthPicker.delegate = self
        fifteenthPicker.delegate = self
        sixteenthPicker.delegate = self
        seventeenthPicker.delegate = self
        eighteenthPicker.delegate = self
        ninteenthPicker.delegate = self
        twentiethPicker.delegate = self
        twentyFirstPicker.delegate = self
        twentySecondPicker.delegate = self
        twentyThirthPicker.delegate = self
        twentyFourthPicker.delegate = self
        twentyFifthPicker.delegate = self
        twentySixthPicker.delegate = self
        twentySeventhPicker.delegate = self
        twentyEighthPicker.delegate = self
        thirtiethPicker.delegate = self
        thirtyFirstPicker.delegate = self
        thirtySecondPicker.delegate = self
        thirtyThirdPicker.delegate = self
        thirtyFourthPicker.delegate = self
        thirtyFifthPicker.delegate = self
        thirtySixthPicker.delegate = self
        thirtySeventhPicker.delegate = self
        thirtyEighthPicker.delegate = self
        thirtyNinthPicker.delegate = self
        fortiethPicker.delegate = self
        fourtyFirstPicker.delegate = self
        fourtySecondPicker.delegate = self
        fourtyThirdPicker.delegate = self
        fourtyFourthPicker.delegate = self
        fourtyFifthPicker.delegate = self
        fourtySixthPicker.delegate = self
        fourtySeventhPicker.delegate = self
        fourtyEighthPicker.delegate = self
        fourtyNinthPicker.delegate = self
        fiftiethPicker.delegate = self
        fiftyFirstPicker.delegate = self
        fiftySecondPicker.delegate = self
        fiftyThirdPicker.delegate = self
        fiftyFourthPicker.delegate = self
        fiftyFifthPicker.delegate = self
        fiftySixthPicker.delegate = self
    }
    
    func createGenomPicker() {
        textFields[0].inputView = firstPicker
        textFields[1].inputView = secondPicker
        textFields[2].inputView = thirdPicker
        textFields[3].inputView = fourthPicker
        textFields[4].inputView = fifthPicker
        textFields[5].inputView = sixthPicker
        textFields[6].inputView = seventhPicker
        textFields[7].inputView = eighthPicker
        textFields[8].inputView = ninthPicker
        textFields[9].inputView = tenthPicker
        textFields[10].inputView = eleventhPicker
        textFields[11].inputView = twelfthPicker
        textFields[12].inputView = thirteenthPicker
        textFields[13].inputView = fourteenthPicker
        textFields[14].inputView = fifteenthPicker
        textFields[15].inputView = sixteenthPicker
        textFields[16].inputView = seventeenthPicker
        textFields[17].inputView = eighteenthPicker
        textFields[18].inputView = ninteenthPicker
        textFields[19].inputView = twentiethPicker
        textFields[20].inputView = twentyFirstPicker
        textFields[21].inputView = twentySecondPicker
        textFields[22].inputView = twentyThirthPicker
        textFields[23].inputView = twentyFourthPicker
        textFields[24].inputView = twentyFifthPicker
        textFields[25].inputView = twentySixthPicker
        textFields[26].inputView = twentySeventhPicker
        textFields[27].inputView = twentyEighthPicker
        textFields[28].inputView = twentyNinthPicker
        textFields[29].inputView = thirtiethPicker
        textFields[30].inputView = thirtyFirstPicker
        textFields[31].inputView = thirtySecondPicker
        textFields[32].inputView = thirtyThirdPicker
        textFields[33].inputView = thirtyFourthPicker
        textFields[34].inputView = thirtyFifthPicker
        textFields[35].inputView = thirtySixthPicker
        textFields[36].inputView = thirtySeventhPicker
        textFields[37].inputView = thirtyEighthPicker
        textFields[38].inputView = thirtyNinthPicker
        textFields[39].inputView = fortiethPicker
        textFields[40].inputView = fourtyFirstPicker
        textFields[41].inputView = fourtySecondPicker
        textFields[42].inputView = fourtyThirdPicker
        textFields[43].inputView = fourtyFourthPicker
        textFields[44].inputView = fourtyFifthPicker
        textFields[45].inputView = fourtySixthPicker
        textFields[46].inputView = fourtySeventhPicker
        textFields[47].inputView = fourtyEighthPicker
        textFields[48].inputView = fourtyNinthPicker
        textFields[49].inputView = fiftiethPicker
        textFields[50].inputView = fiftyFirstPicker
        textFields[51].inputView = fiftySecondPicker
        textFields[52].inputView = fiftyThirdPicker
        textFields[53].inputView = fiftyFourthPicker
        textFields[54].inputView = fiftyFifthPicker
        textFields[55].inputView = fiftySixthPicker
        
        firstPicker.backgroundColor = .black
        secondPicker.backgroundColor = .black
        thirdPicker.backgroundColor = .black
        fourthPicker.backgroundColor = .black
        fifthPicker.backgroundColor = .black
        sixthPicker.backgroundColor = .black
        seventhPicker.backgroundColor = .black
        eighthPicker.backgroundColor = .black
        ninthPicker.backgroundColor = .black
        tenthPicker.backgroundColor = .black
        eleventhPicker.backgroundColor = .black
        twelfthPicker.backgroundColor = .black
        thirteenthPicker.backgroundColor = .black
        fourteenthPicker.backgroundColor = .black
        fifteenthPicker.backgroundColor = .black
        sixteenthPicker.backgroundColor = .black
        seventeenthPicker.backgroundColor = .black
        eighteenthPicker.backgroundColor = .black
        ninteenthPicker.backgroundColor = .black
        twentiethPicker.backgroundColor = .black
        twentyFirstPicker.backgroundColor = .black
        twentySecondPicker.backgroundColor = .black
        twentyThirthPicker.backgroundColor = .black
        twentyFourthPicker.backgroundColor = .black
        twentyFifthPicker.backgroundColor = .black
        twentySixthPicker.backgroundColor = .black
        twentySeventhPicker.backgroundColor = .black
        twentyEighthPicker.backgroundColor = .black
        twentyNinthPicker.backgroundColor = .black
        thirtiethPicker.backgroundColor = .black
        thirtyFirstPicker.backgroundColor = .black
        thirtySecondPicker.backgroundColor = .black
        thirtyThirdPicker.backgroundColor = .black
        thirtyFourthPicker.backgroundColor = .black
        thirtyFifthPicker.backgroundColor = .black
        thirtySixthPicker.backgroundColor = .black
        thirtySeventhPicker.backgroundColor = .black
        thirtyEighthPicker.backgroundColor = .black
        thirtyNinthPicker.backgroundColor = .black
        fortiethPicker.backgroundColor = .black
        fourtyFirstPicker.backgroundColor = .black
        fourtySecondPicker.backgroundColor = .black
        fourtyThirdPicker.backgroundColor = .black
        fourtyFourthPicker.backgroundColor = .black
        fourtyFifthPicker.backgroundColor = .black
        fourtySixthPicker.backgroundColor = .black
        fourtySeventhPicker.backgroundColor = .black
        fourtyEighthPicker.backgroundColor = .black
        fourtyNinthPicker.backgroundColor = .black
        fiftiethPicker.backgroundColor = .black
        fiftyFirstPicker.backgroundColor = .black
        fiftySecondPicker.backgroundColor = .black
        fiftyThirdPicker.backgroundColor = .black
        fiftyFourthPicker.backgroundColor = .black
        fiftyFifthPicker.backgroundColor = .black
        fiftySixthPicker.backgroundColor = .black
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows = 0
    
        if pickerView == firstPicker {
            countrows = eyesColors.count
        } else if pickerView == secondPicker {
            countrows = skinColors.count
        } else if pickerView == thirdPicker {
            countrows = hairColors.count
        } else if pickerView == fourthPicker {
            countrows = anemiaCases.count
        } else if pickerView == fifthPicker {
            countrows = eyesColors.count
        } else if pickerView == sixthPicker {
            countrows = skinColors.count
        } else if pickerView == seventhPicker {
            countrows = hairColors.count
        } else if pickerView == eighthPicker {
            countrows = anemiaCases.count
        } else if pickerView == ninthPicker {
            countrows = eyesColors.count
        } else if pickerView == tenthPicker {
            countrows = skinColors.count
        } else if pickerView == eleventhPicker {
            countrows = hairColors.count
        } else if pickerView == twelfthPicker {
            countrows = anemiaCases.count
        } else if pickerView == thirteenthPicker {
            countrows = eyesColors.count
        } else if pickerView == fourteenthPicker {
            countrows = skinColors.count
        } else if pickerView == fifteenthPicker {
            countrows = hairColors.count
        } else if pickerView == sixteenthPicker {
            countrows = anemiaCases.count
        } else if pickerView == seventeenthPicker {
            countrows = eyesColors.count
        } else if pickerView == eighteenthPicker {
            countrows = skinColors.count
        } else if pickerView == ninteenthPicker {
            countrows = hairColors.count
        } else if pickerView == twentiethPicker {
            countrows = anemiaCases.count
        } else if pickerView == twentyFirstPicker {
            countrows = eyesColors.count
        } else if pickerView == twentySecondPicker {
            countrows = skinColors.count
        } else if pickerView == twentyThirthPicker {
            countrows = hairColors.count
        } else if pickerView == twentyFourthPicker {
            countrows = anemiaCases.count
        } else if pickerView == twentyFifthPicker {
            countrows = eyesColors.count
        } else if pickerView == twentySixthPicker {
            countrows = skinColors.count
        } else if pickerView == twentySeventhPicker {
            countrows = hairColors.count
        } else if pickerView == twentyEighthPicker {
            countrows = anemiaCases.count
        } else if pickerView == twentyNinthPicker {
            countrows = eyesColors.count
        } else if pickerView == thirtiethPicker {
            countrows = skinColors.count
        } else if pickerView == thirtyFirstPicker {
            countrows = hairColors.count
        } else if pickerView == thirtySecondPicker {
            countrows = anemiaCases.count
        } else if pickerView == thirtyThirdPicker {
            countrows = eyesColors.count
        } else if pickerView == thirtyFourthPicker {
            countrows = skinColors.count
        } else if pickerView == thirtyFifthPicker {
            countrows = hairColors.count
        } else if pickerView == thirtySixthPicker {
            countrows = anemiaCases.count
        } else if pickerView == thirtySeventhPicker {
            countrows = eyesColors.count
        } else if pickerView == thirtyEighthPicker {
            countrows = skinColors.count
        } else if pickerView == thirtyNinthPicker {
            countrows = hairColors.count
        } else if pickerView == fortiethPicker {
            countrows = anemiaCases.count
        } else if pickerView == fourtyFirstPicker {
            countrows = eyesColors.count
        } else if pickerView == fourtySecondPicker {
            countrows = skinColors.count
        } else if pickerView == fourtyThirdPicker {
            countrows = hairColors.count
        } else if pickerView == fourtyFourthPicker {
            countrows = anemiaCases.count
        } else if pickerView == fourtyFifthPicker {
            countrows = eyesColors.count
        } else if pickerView == fourtySixthPicker {
            countrows = skinColors.count
        } else if pickerView == fourtySeventhPicker {
            countrows = hairColors.count
        } else if pickerView == fourtyEighthPicker {
            countrows = anemiaCases.count
        } else if pickerView == fourtyNinthPicker {
            countrows = eyesColors.count
        } else if pickerView == fiftiethPicker {
            countrows = skinColors.count
        } else if pickerView == fiftyFirstPicker {
            countrows = hairColors.count
        } else if pickerView == fiftySecondPicker {
            countrows = anemiaCases.count
        } else if pickerView == fiftyThirdPicker {
            countrows = eyesColors.count
        } else if pickerView == fiftyFourthPicker {
            countrows = skinColors.count
        } else if pickerView == fiftyFifthPicker {
            countrows = hairColors.count
        } else if pickerView == fiftySixthPicker {
            countrows = anemiaCases.count
        }
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var titleRow = ""
        
        if pickerView == firstPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == secondPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == thirdPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == fourthPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == fifthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == sixthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == seventhPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == eighthPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == ninthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == tenthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == eleventhPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == twelfthPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == thirteenthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == fourteenthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == fifteenthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == sixteenthPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == seventeenthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == eighthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == ninteenthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == twentiethPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == twentyFirstPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == twentySecondPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == twentyThirthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == twentyFourthPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == twentyFifthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == twentySixthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == twentySeventhPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == twentyEighthPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == twentyNinthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == thirtiethPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == thirtyFirstPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtySecondPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == thirtyThirdPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == thirtyFourthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == thirtyFifthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtySixthPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == thirtySeventhPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == thirtyEighthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == thirtyNinthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == fortiethPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == fourtyFirstPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == fourtySecondPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == fourtyThirdPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == fourtyFourthPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == fourtyFifthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == fourtySixthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == fourtySeventhPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == fourtyEighthPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == fourtyNinthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == fiftiethPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == fiftyFirstPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == fiftySecondPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else if pickerView == fiftyThirdPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == fiftyFourthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == fiftyFifthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == fiftySixthPicker {
            titleRow = anemiaCases[row]
            return titleRow
        } else {
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == firstPicker {
            textFields[0].text = eyesColors[row]
        } else if pickerView == secondPicker {
            textFields[1].text = skinColors[row]
        } else if pickerView == thirdPicker {
            textFields[2].text = hairColors[row]
        } else if pickerView == fourthPicker {
            textFields[3].text = anemiaCases[row]
        } else if pickerView == fifthPicker {
            textFields[4].text = eyesColors[row]
        } else if pickerView == sixthPicker {
            textFields[5].text = skinColors[row]
        } else if pickerView == seventhPicker {
            textFields[6].text = hairColors[row]
        } else if pickerView == eighthPicker {
            textFields[7].text = anemiaCases[row]
        } else if pickerView == ninthPicker {
            textFields[8].text = eyesColors[row]
        } else if pickerView == tenthPicker {
            textFields[9].text = skinColors[row]
        } else if pickerView == eleventhPicker {
            textFields[10].text = hairColors[row]
        } else if pickerView == twentiethPicker {
            textFields[11].text = anemiaCases[row]
        } else if pickerView == thirteenthPicker {
            textFields[12].text = eyesColors[row]
        } else if pickerView == fourteenthPicker {
            textFields[13].text = skinColors[row]
        } else if pickerView == fifteenthPicker {
            textFields[14].text = hairColors[row]
        } else if pickerView == sixteenthPicker {
            textFields[15].text = anemiaCases[row]
        } else if pickerView == seventhPicker {
            textFields[16].text = eyesColors[row]
        } else if pickerView == eighteenthPicker {
            textFields[17].text = skinColors[row]
        } else if pickerView == ninteenthPicker {
            textFields[18].text = hairColors[row]
        } else if pickerView == twentiethPicker {
            textFields[19].text = anemiaCases[row]
        } else if pickerView == twentyFirstPicker {
            textFields[20].text = eyesColors[row]
        } else if pickerView == twentySecondPicker {
            textFields[21].text = skinColors[row]
        } else if pickerView == twentyThirthPicker {
            textFields[22].text = hairColors[row]
        } else if pickerView == twentyFourthPicker {
            textFields[23].text = anemiaCases[row]
        } else if pickerView == twentyFifthPicker {
            textFields[24].text = eyesColors[row]
        } else if pickerView == twentySixthPicker {
            textFields[25].text = skinColors[row]
        } else if pickerView == twentySeventhPicker {
            textFields[26].text = hairColors[row]
        } else if pickerView == twentyEighthPicker {
            textFields[27].text = anemiaCases[row]
        } else if pickerView == twentyNinthPicker {
            textFields[28].text = eyesColors[row]
        } else if pickerView == thirtiethPicker {
            textFields[29].text = skinColors[row]
        } else if pickerView == thirtyFirstPicker {
            textFields[30].text = hairColors[row]
        } else if pickerView == thirtySecondPicker {
            textFields[31].text = anemiaCases[row]
        } else if pickerView == thirtyThirdPicker {
            textFields[32].text = eyesColors[row]
        } else if pickerView == thirtyFourthPicker {
            textFields[33].text = skinColors[row]
        } else if pickerView == thirtyFifthPicker {
            textFields[34].text = hairColors[row]
        } else if pickerView == thirtySixthPicker {
            textFields[35].text = anemiaCases[row]
        } else if pickerView == thirtySeventhPicker {
            textFields[36].text = eyesColors[row]
        } else if pickerView == thirtyEighthPicker {
            textFields[37].text = skinColors[row]
        } else if pickerView == thirtyNinthPicker {
            textFields[38].text = hairColors[row]
        } else if pickerView == fortiethPicker {
            textFields[39].text = anemiaCases[row]
        } else if pickerView == fourtyFirstPicker {
            textFields[40].text = eyesColors[row]
        } else if pickerView == fourtySecondPicker {
            textFields[41].text = skinColors[row]
        } else if pickerView == fourtyThirdPicker {
            textFields[42].text = hairColors[row]
        } else if pickerView == fourtyFourthPicker {
            textFields[43].text = anemiaCases[row]
        } else if pickerView == fourtyFifthPicker {
            textFields[44].text = eyesColors[row]
        } else if pickerView == fourtySixthPicker {
            textFields[45].text = skinColors[row]
        } else if pickerView == fourtySeventhPicker {
            textFields[46].text = hairColors[row]
        } else if pickerView == fourtyEighthPicker {
            textFields[47].text = anemiaCases[row]
        } else if pickerView == fourtyNinthPicker {
            textFields[48].text = eyesColors[row]
        } else if pickerView == fiftiethPicker {
            textFields[49].text = skinColors[row]
        } else if pickerView == fiftyFirstPicker {
            textFields[50].text = hairColors[row]
        } else if pickerView == fiftySecondPicker {
            textFields[51].text = anemiaCases[row]
        } else if pickerView == fiftyThirdPicker {
            textFields[52].text = eyesColors[row]
        } else if pickerView == fiftyFourthPicker {
            textFields[53].text = skinColors[row]
        } else if pickerView == fiftyFifthPicker {
            textFields[54].text = hairColors[row]
        } else if pickerView == fiftySixthPicker {
            textFields[55].text = anemiaCases[row]
        }
    }
    
    func retrieveData() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Genes")
        
        do {
            let results = try? managedContext.fetch(fetchRequest)
                
            if results!.count > 0 {
                for result in results as! [NSManagedObject] {
                    if let name = result.value(forKey: "name") as? String {
                        nameTextField.text = name
                    }

                    // Mom
                    if let momE = result.value(forKey: "momEyesC") as? String {
                        textFields[0].text = momE
                    }
                    
                    if let momS = result.value(forKey: "momSkinC") as? String {
                        textFields[1].text = momS
                    }
                    
                    if let momH = result.value(forKey: "momHairC") as? String {
                        textFields[2].text = momH
                    }
                    
                    if let momA = result.value(forKey: "momAnemiaC") as? String {
                        textFields[3].text = momA
                    }

                    // Dad
                    if let dadE = result.value(forKey: "dadEyesC") as? String {
                        textFields[4].text = dadE
                    }
                    
                    if let dadS = result.value(forKey: "dadSkinC") as? String {
                        textFields[5].text = dadS
                    }
                    
                    if let dadH = result.value(forKey: "dadHairC") as? String {
                        textFields[6].text = dadH
                    }
                    
                    if let dadA = result.value(forKey: "dadAnemiaC") as? String {
                        textFields[7].text = dadA
                    }

                    // Mom's Mom
                    if let momsMomE = result.value(forKey: "momsMomEyesC") as? String {
                        textFields[8].text = momsMomE
                    }
                    
                    if let momsMomS = result.value(forKey: "momsMomSkinC") as? String {
                        textFields[9].text = momsMomS
                    }
                    
                    if let momsMomH = result.value(forKey: "momsMomHairC") as? String {
                        textFields[10].text = momsMomH
                    }
                    
                    if let momsMomA = result.value(forKey: "momsMomAnemiaC") as? String {
                        textFields[11].text = momsMomA
                    }

                    // Mom's Dad
                    if let momsDadE = result.value(forKey: "momsDadEyesC") as? String {
                        textFields[12].text = momsDadE
                    }
                    
                    if let momsDadS = result.value(forKey: "momsDadSkinC") as? String {
                        textFields[13].text = momsDadS
                    }
                    
                    if let momsDadH = result.value(forKey: "momsDadHairC") as? String {
                        textFields[14].text = momsDadH
                    }
                    
                    if let momsDadA = result.value(forKey: "momsDadAnemiaC") as? String {
                        textFields[15].text = momsDadA
                    }

                    // Dad's Mom
                    if let dadsMomE = result.value(forKey: "dadsMomEyesC") as? String {
                        textFields[16].text = dadsMomE
                    }
                    
                    if let dadsMomS = result.value(forKey: "dadsMomSkinC") as? String {
                        textFields[17].text = dadsMomS
                    }
                    
                    if let dadsMomH = result.value(forKey: "dadsMomHairC") as? String {
                        textFields[18].text = dadsMomH
                    }
                    
                    if let dadsMomA = result.value(forKey: "dadsMomAnemiaC") as? String {
                        textFields[19].text = dadsMomA
                    }

                    // Dad's Dad
                    if let dadsDadE = result.value(forKey: "dadsDadEyesC") as? String {
                        textFields[20].text = dadsDadE
                    }
                    
                    if let dadsDadS = result.value(forKey: "dadsDadSkinC") as? String {
                        textFields[21].text = dadsDadS
                    }
                    
                    if let dadsDadH = result.value(forKey: "dadsDadHairC") as? String {
                        textFields[22].text = dadsDadH
                    }
                    
                    if let dadsDadA = result.value(forKey: "dadsDadAnemiaC") as? String {
                        textFields[23].text = dadsDadA
                    }

                    // Mom's Mom's Mom
                    if let momsMomsMomE = result.value(forKey: "momsMomsMomEyesC") as? String {
                        textFields[24].text = momsMomsMomE
                    }
                    
                    if let momsMomsMomS = result.value(forKey: "momsMomsMomSkinC") as? String {
                        textFields[25].text = momsMomsMomS
                    }
                    
                    if let momsMomsMomH = result.value(forKey: "momsMomsMomHairC") as? String {
                        textFields[26].text = momsMomsMomH
                    }
                    
                    if let momsMomsMomA = result.value(forKey: "momsMomsMomAnemiaC") as? String {
                        textFields[27].text = momsMomsMomA
                    }

                    // Mom's Mom's Dad
                    if let momsMomsDadE = result.value(forKey: "momsMomsDadEyesC") as? String {
                        textFields[28].text = momsMomsDadE
                    }
                    
                    if let momsMomsDadS = result.value(forKey: "momsMomsDadSkinC") as? String {
                        textFields[29].text = momsMomsDadS
                    }
                    
                    if let momsMomsDadH = result.value(forKey: "momsMomsDadHairC") as? String {
                        textFields[30].text = momsMomsDadH
                    }
                    
                    if let momsMomsDadA = result.value(forKey: "momsMomsDadAnemiaC") as? String {
                        textFields[31].text = momsMomsDadA
                    }

                    // Mom's Dad's Mom
                    if let momsDadsMomE = result.value(forKey: "momsDadsMomEyesC") as? String {
                        textFields[32].text = momsDadsMomE
                    }
                    
                    if let momsDadsMomS = result.value(forKey: "momsDadsMomSkinC") as? String {
                        textFields[33].text = momsDadsMomS
                    }
                    
                    if let momsDadsMomH = result.value(forKey: "momsDadsMomHairC") as? String {
                        textFields[34].text = momsDadsMomH
                    }
                    
                    if let momsDadsMomA = result.value(forKey: "momsDadsMomAnemiaC") as? String {
                        textFields[35].text = momsDadsMomA
                    }

                    // Mom's Dad's Dad
                    if let momsDadsDadE = result.value(forKey: "momsDadsDadEyesC") as? String {
                        textFields[36].text = momsDadsDadE
                    }
                    
                    if let momsDadsDadS = result.value(forKey: "momsDadsDadSkinC") as? String {
                        textFields[37].text = momsDadsDadS
                    }
                    
                    if let momsDadsDadH = result.value(forKey: "momsDadsDadHairC") as? String {
                        textFields[38].text = momsDadsDadH
                    }
                    
                    if let momsDadsDadA = result.value(forKey: "momsDadsDadAnemiaC") as? String {
                        textFields[39].text = momsDadsDadA
                    }

                    // Dads Moms Mom
                    if let dadsMomsMomE = result.value(forKey: "dadsMomsMomEyesC") as? String {
                        textFields[40].text = dadsMomsMomE
                    }
                    
                    if let dadsMomsMomS = result.value(forKey: "dadsMomsMomSkinC") as? String {
                        textFields[41].text = dadsMomsMomS
                    }
                    
                    if let dadsMomsMomH = result.value(forKey: "dadsMomsMomHairC") as? String {
                        textFields[42].text = dadsMomsMomH
                    }
                    
                    if let dadsMomsMomA = result.value(forKey: "dadsMomsMomAnemiaC") as? String {
                        textFields[43].text = dadsMomsMomA
                    }

                    // Dads Moms Dad
                    if let dadsMomsDadE = result.value(forKey: "dadsMomsDadEyesC") as? String {
                        textFields[44].text = dadsMomsDadE
                    }
                    
                    if let dadsMomsDadS = result.value(forKey: "dadsMomsDadSkinC") as? String {
                        textFields[45].text = dadsMomsDadS
                    }
                    
                    if let dadsMomsDadH = result.value(forKey: "dadsMomsDadHairC") as? String {
                        textFields[46].text = dadsMomsDadH
                    }
                    
                    if let dadsMomsDadA = result.value(forKey: "dadsMomsDadAnemiaC") as? String {
                        textFields[47].text = dadsMomsDadA
                    }

                    // Dads Dads Mom
                    if let dadsDadsMomE = result.value(forKey: "dadsDadsMomEyesC") as? String {
                        textFields[48].text = dadsDadsMomE
                    }
                    
                    if let dadsDadsMomS = result.value(forKey: "dadsDadsMomSkinC") as? String {
                        textFields[49].text = dadsDadsMomS
                    }
                    
                    if let dadsDadsMomH = result.value(forKey: "dadsDadsMomHairC") as? String {
                        textFields[50].text = dadsDadsMomH
                    }
                    
                    if let dadsDadsMomA = result.value(forKey: "dadsDadsMomAnemiaC") as? String {
                        textFields[51].text = dadsDadsMomA
                    }

                    // Dads Dads Dad
                    if let dadsDadsDadE = result.value(forKey: "dadsDadsDadEyesC") as? String {
                        textFields[52].text = dadsDadsDadE
                    }
                    
                    if let dadsDadsDadS = result.value(forKey: "dadsDadsDadSkinC") as? String {
                        textFields[53].text = dadsDadsDadS
                    }
                    
                    if let dadsDadsDadH = result.value(forKey: "dadsDadsDadHairC") as? String {
                        textFields[54].text = dadsDadsDadH
                    }
                    
                    if let dadsDadsDadA = result.value(forKey: "dadsDadsDadAnemiaC") as? String {
                        textFields[55].text = dadsDadsDadA
                    }
                }
            }
        }
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 14
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "AddVCCell", for: indexPath) as! AddVCCell
//        cell.eyesTextField = textFields[indexPath.row]
//        cell.skinTextField = textFields[indexPath.row]
//        cell.hairTextField = textFields[indexPath.row]
//        cell.anemiaTextField = textFields[indexPath.row]
//
//        return cell
//    }
    
    func updateData() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }

        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "Genes")
        fetchRequest.predicate = NSPredicate(format: "username = %@", "Gene1")
        
        do {
            let test = try managedContext.fetch(fetchRequest)
            
            let objectUpdate = test[0] as! NSManagedObject
            objectUpdate.setValue("newName", forKey: "username")
            do {
                try managedContext.save()
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
    }
    
    func createToolbar() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        // Customizations
        toolBar.barTintColor = .black
        toolBar.tintColor = .white
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddVC.dismissKeyboard))
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        nameTextField.inputAccessoryView = toolBar
        textFields[0].inputAccessoryView = toolBar
        textFields[1].inputAccessoryView = toolBar
        textFields[2].inputAccessoryView = toolBar
        textFields[3].inputAccessoryView = toolBar
        textFields[4].inputAccessoryView = toolBar
        textFields[5].inputAccessoryView = toolBar
        textFields[6].inputAccessoryView = toolBar
        textFields[7].inputAccessoryView = toolBar
        textFields[8].inputAccessoryView = toolBar
        textFields[9].inputAccessoryView = toolBar
        textFields[10].inputAccessoryView = toolBar
        textFields[11].inputAccessoryView = toolBar
        textFields[12].inputAccessoryView = toolBar
        textFields[13].inputAccessoryView = toolBar
        textFields[14].inputAccessoryView = toolBar
        textFields[15].inputAccessoryView = toolBar
        textFields[16].inputAccessoryView = toolBar
        textFields[17].inputAccessoryView = toolBar
        textFields[18].inputAccessoryView = toolBar
        textFields[19].inputAccessoryView = toolBar
        textFields[20].inputAccessoryView = toolBar
        textFields[21].inputAccessoryView = toolBar
        textFields[22].inputAccessoryView = toolBar
        textFields[23].inputAccessoryView = toolBar
        textFields[24].inputAccessoryView = toolBar
        textFields[25].inputAccessoryView = toolBar
        textFields[26].inputAccessoryView = toolBar
        textFields[27].inputAccessoryView = toolBar
        textFields[28].inputAccessoryView = toolBar
        textFields[29].inputAccessoryView = toolBar
        textFields[30].inputAccessoryView = toolBar
        textFields[31].inputAccessoryView = toolBar
        textFields[32].inputAccessoryView = toolBar
        textFields[33].inputAccessoryView = toolBar
        textFields[34].inputAccessoryView = toolBar
        textFields[35].inputAccessoryView = toolBar
        textFields[36].inputAccessoryView = toolBar
        textFields[37].inputAccessoryView = toolBar
        textFields[38].inputAccessoryView = toolBar
        textFields[39].inputAccessoryView = toolBar
        textFields[40].inputAccessoryView = toolBar
        textFields[41].inputAccessoryView = toolBar
        textFields[42].inputAccessoryView = toolBar
        textFields[43].inputAccessoryView = toolBar
        textFields[44].inputAccessoryView = toolBar
        textFields[45].inputAccessoryView = toolBar
        textFields[46].inputAccessoryView = toolBar
        textFields[47].inputAccessoryView = toolBar
        textFields[48].inputAccessoryView = toolBar
        textFields[49].inputAccessoryView = toolBar
        textFields[50].inputAccessoryView = toolBar
        textFields[51].inputAccessoryView = toolBar
        textFields[52].inputAccessoryView = toolBar
        textFields[53].inputAccessoryView = toolBar
        textFields[54].inputAccessoryView = toolBar
        textFields[55].inputAccessoryView = toolBar
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var label: UILabel
        
        if let view = view as? UILabel {
            label = view
        } else {
            label = UILabel()
        }
        
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "Menlo-Regular", size: 17)
        
        if pickerView == firstPicker {
            label.text = eyesColors[row]
        } else if pickerView == secondPicker {
            label.text = skinColors[row]
        } else if pickerView == thirdPicker {
            label.text = eyesColors[row]
        } else if pickerView == fourthPicker {
            label.text = skinColors[row]
        } else if pickerView == fifthPicker {
            label.text = eyesColors[row]
        } else if pickerView == sixthPicker {
            label.text = skinColors[row]
        } else if pickerView == seventhPicker {
            label.text = eyesColors[row]
        } else if pickerView == eighthPicker {
            label.text = skinColors[row]
        } else if pickerView == ninthPicker {
            label.text = eyesColors[row]
        } else if pickerView == tenthPicker {
            label.text = skinColors[row]
        } else if pickerView == eleventhPicker {
            label.text = eyesColors[row]
        } else if pickerView == twelfthPicker {
            label.text = skinColors[row]
        } else if pickerView == thirteenthPicker {
            label.text = eyesColors[row]
        } else if pickerView == fourteenthPicker {
            label.text = skinColors[row]
        } else if pickerView == fifteenthPicker {
            label.text = eyesColors[row]
        } else if pickerView == sixteenthPicker {
            label.text = skinColors[row]
        } else if pickerView == seventeenthPicker {
            label.text = eyesColors[row]
        } else if pickerView == eighteenthPicker {
            label.text = skinColors[row]
        } else if pickerView == ninteenthPicker {
            label.text = eyesColors[row]
        } else if pickerView == twentiethPicker {
            label.text = skinColors[row]
        } else if pickerView == twentyFirstPicker {
            label.text = eyesColors[row]
        } else if pickerView == twentySecondPicker {
            label.text = skinColors[row]
        } else if pickerView == twentyThirthPicker {
            label.text = eyesColors[row]
        } else if pickerView == twentyFourthPicker {
            label.text = skinColors[row]
        } else if pickerView == twentyFifthPicker {
            label.text = eyesColors[row]
        } else if pickerView == twentySixthPicker {
            label.text = skinColors[row]
        } else if pickerView == twentySeventhPicker {
            label.text = eyesColors[row]
        } else if pickerView == twentyEighthPicker {
            label.text = skinColors[row]
        } else if pickerView == twentyNinthPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtiethPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtyFirstPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtySecondPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtyThirdPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtyFourthPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtyFifthPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtySixthPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtySeventhPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtyEighthPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtyNinthPicker {
            label.text = hairColors[row]
        } else if pickerView == fortiethPicker {
            label.text = hairColors[row]
        } else if pickerView == fourtyFirstPicker {
            label.text = hairColors[row]
        } else if pickerView == fourtySecondPicker {
            label.text = hairColors[row]
        }
        return label
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "toInputVC" {
            let destnationVC = segue.destination as! InputVC
            destnationVC.name = nameText
            destnationVC.firstText = textOne
            destnationVC.secondText = textTwo
            destnationVC.thirdText = textThree
            destnationVC.fourthText = textFour
            destnationVC.fifthText = textFive
            destnationVC.sixthText = textSix
            destnationVC.seventhText = textSeven
            destnationVC.eighthText = textEight
            destnationVC.ninthText = textNine
            destnationVC.tenthText = textTen
            destnationVC.eleventhText = textEleven
            destnationVC.twelfthText = textTwelve
            destnationVC.thirteenthText = textThirteen
            destnationVC.fourteenthText = textFourteen
            destnationVC.fifteenthText = textFifteen
            destnationVC.sixteenthText = textSixteen
            destnationVC.seventeenthText = textSeventeen
            destnationVC.eighteenthText = textEighteen
            destnationVC.ninteenthText = textNinteen
            destnationVC.twentiethText = textTwenty
            destnationVC.twentyFirstText = textTwentyOne
            destnationVC.twentySecondText = textTwentyTwo
            destnationVC.twentyThirdText = textTwentyThree
            destnationVC.twentyFourthText = textTwentyFour
            destnationVC.twentyFifthText = textTwentyFive
            destnationVC.twentySixthText = textTwentySix
            destnationVC.twentySeventhText = textTwentySeven
            destnationVC.twentyEighthText = textTwentyEight
            destnationVC.twentyNinthText = textTwentyNine
            destnationVC.thirtiethText = textThirty
            destnationVC.thirtyFirstText = textThirtyOne
            destnationVC.thirtySecondText = textThirtyTwo
            destnationVC.thirtyThirdText = textThirtyThree
            destnationVC.thirtyFourthText = textThirtyFour
            destnationVC.thirtyFifthText = textThirtyFive
            destnationVC.thirtySixthText = textThirtySix
            destnationVC.thirtySeventhText = textThirtySeven
            destnationVC.thirtyEightText = textThirtyEight
            destnationVC.thirtyNinthText = textThirtyNine
            destnationVC.fortiethText = textFourty
            destnationVC.fourtyFirstText = textFourtyOne
            destnationVC.fourtySecondText = textFourtyTwo
            destnationVC.fourtyThirdText = textTwentyThree
            destnationVC.twentyFourthText = textTwentyFour
            destnationVC.twentyFifthText = textTwentyFive
            destnationVC.twentySixthText = textTwentySix
            destnationVC.twentySeventhText = textTwentySeven
            destnationVC.twentyEighthText = textTwentyEight
            destnationVC.twentyNinthText = textTwentyNine
            destnationVC.thirtiethText = textThirty
            destnationVC.thirtyFirstText = textThirtyOne
            destnationVC.thirtySecondText = textThirtyTwo
            destnationVC.thirtyThirdText = textThirtyThree
            destnationVC.thirtyFourthText = textThirtyFour
            destnationVC.thirtyFifthText = textThirtyFive
            destnationVC.thirtySixthText = textThirtySix
            destnationVC.thirtySeventhText = textThirtySeven
            destnationVC.thirtyEightText = textThirtyEight
            destnationVC.thirtyNinthText = textThirtyNine
            destnationVC.fortiethText = textFourty
            destnationVC.fourtyFirstText = textFourtyOne
            destnationVC.fourtySecondText = textFourtyTwo
        } else if segue.identifier == "toInputVC" {
            let destinationVC = segue.destination as! InputVC
            destinationVC.thirdTF = secondTF
        }
    }
    
    @IBAction func calculateButton(_ sender: UIBarButtonItem) {
        nameText = nameTextField.text!
        textOne = textFields[0].text!
        textTwo = textFields[1].text!
        textThree = textFields[2].text!
        textFour = textFields[3].text!
        textFive = textFields[4].text!
        textSix = textFields[5].text!
        textSeven = textFields[6].text!
        textEight = textFields[7].text!
        textNine = textFields[8].text!
        textTen = textFields[9].text!
        textEleven = textFields[10].text!
        textTwelve = textFields[11].text!
        textThirteen = textFields[12].text!
        textFourteen = textFields[13].text!
        textFifteen = textFields[14].text!
        textSixteen = textFields[15].text!
        textSeventeen = textFields[16].text!
        textEighteen = textFields[17].text!
        textNinteen = textFields[18].text!
        textTwenty = textFields[19].text!
        textTwentyOne = textFields[20].text!
        textTwentyTwo = textFields[21].text!
        textTwentyThree = textFields[22].text!
        textTwentyFour = textFields[23].text!
        textTwentyFive = textFields[24].text!
        textTwentySix = textFields[25].text!
        textTwentySeven = textFields[26].text!
        textTwentyEight = textFields[27].text!
        textTwentyNine = textFields[28].text!
        textThirty = textFields[29].text!
        textThirtyOne = textFields[30].text!
        textThirtyTwo = textFields[31].text!
        textThirtyThree = textFields[32].text!
        textThirtyFour = textFields[33].text!
        textThirtyFive = textFields[34].text!
        textThirtySix = textFields[35].text!
        textThirtySeven = textFields[36].text!
        textThirtyEight = textFields[37].text!
        textThirtyNine = textFields[38].text!
        textFourty = textFields[39].text!
        textFourtyOne = textFields[40].text!
        textFourtyTwo = textFields[41].text!
        textFourtyThree = textFields[42].text!
        textFourtyFour = textFields[43].text!
        textFourtyFive = textFields[44].text!
        textFourtySix = textFields[45].text!
        textFourtySeven = textFields[46].text!
        textFourtyEight = textFields[47].text!
        textFourtyNine = textFields[48].text!
        textFifty = textFields[49].text!
        textFiftyOne = textFields[50].text!
        textFiftyTwo = textFields[51].text!
        textFiftyThree = textFields[52].text!
        textFiftyFour = textFields[53].text!
        textFiftyFive = textFields[54].text!
        textFiftySix = textFields[55].text!
        
        if nameText == "" || textOne == "" || textTwo == "" || textThree == "" || textFour == "" || textFive == "" || textSix == "" || textSeven == "" || textEight == "" || textNine == "" || textTen == "" || textEleven == "" || textTwelve == "" || textThirteen == "" || textFourteen == "" || textFifteen == "" || textSixteen == "" || textSeventeen == "" || textEighteen == "" || textNinteen == "" || textTwenty == "" || textTwentyOne == "" || textTwentyTwo == "" || textTwentyThree == "" || textTwentyFour == "" || textTwentyFive == "" || textTwentySix == "" || textTwentySeven == "" || textTwentyEight == "" || textTwentyNine == "" || textThirty == "" || textThirtyOne == "" || textThirtyTwo == "" || textThirtyThree == "" || textThirtyFour == "" || textThirtyFive == "" || textThirtySix == "" || textThirtySeven == "" || textThirtyEight == "" || textThirtyNine == "" || textFourty == "" || textFourtyOne == "" || textFourtyTwo == "" {
            
            let alert = UIAlertController(title: "Alert", message: "You have to complete all options", preferredStyle: UIAlertController.Style.alert)
            let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButoon)
            self.present(alert, animated: true, completion: nil)
        } else {
            performSegue(withIdentifier: "toInputVC", sender: nil)
        }
    }
    
    @IBAction func tryButton(_ sender: Any) {
        ////        momFirstTextField.text = "Hazel"
        ////        dadFirstTextField.text = "Hazel"
        ////        momsMomFirstTextField.text = "Hazel"
        ////        momsDadFirstTextField.text = "Hazel"
        ////        dadsMomFirstTextField.text = "Hazel"
        ////        dadsDadFirstTextField.text = "Blue"
        ////        momsMomsMomFirstTextField.text = "Blue"
        ////        momsMomsDadFirstTextField.text = "Blue"
        ////        momsDadsMomFirstTextField.text = "Blue"
        ////        momsDadsDadFirstTextField.text = "Blue"
        ////        dadsMomsMomFirstTextField.text = "Brown"
        ////        dadsMomsDadFirstTextField.text = "Brown"
        ////        dadsDadsMomFirstTextField.text = "Brown"
        ////        dadsDadsDadFirstTextField.text = "L. Brown"
        ////
        ////        momSecondTextField.text = "Black"
        ////        dadSecondTextField.text = "Black"
        ////        momsMomSecondTextField.text = "D. Brown"
        ////        momsDadSecondTextField.text = "D. Brown"
        ////        dadsMomSecondTextField.text = "Brown"
        ////        dadsDadSecondTextField.text = "White"
        ////        momsMomsMomSecondTextField.text = "White"
        ////        momsMomsDadSecondTextField.text = "White"
        ////        momsDadsMomSecondTextField.text = "White"
        ////        momsDadsDadSecondTextField.text = "White"
        ////        dadsMomsMomSecondTextField.text = "Brown"
        ////        dadsMomsDadSecondTextField.text = "Brown"
        ////        dadsDadsMomSecondTextField.text = "Brown"
        ////        dadsDadsDadSecondTextField.text = "L. Brown"
        ////
        ////        momThirdTextField.text = "Auburn"
        ////        dadThirdTextField.text = "Red"
        ////        momsMomThirdTextField.text = "Auburn"
        ////        momsDadThidTextField.text = "Red"
        ////        dadsMomThirdTextField.text = "Auburn"
        ////        dadsDadThirdTextField.text = "Red"
        ////        momsMomsMomThirdTextField.text = "Auburn"
        ////        momsMomsDadThirdTextField.text = "Red"
        ////        momsDadsMomThirdTextField.text = "Auburn"
        ////        momsDadsDadThirdTextField.text = "Red"
        ////        dadsMomsMomThirdTextField.text = "Brown"
        ////        dadsMomsDadThirdTextField.text = "Brown"
        ////        dadsDadsMomThirdTextField.text = "L. Brown"
        ////        dadsDadsDadThirdTextField.text = "Brown"
    }
}
