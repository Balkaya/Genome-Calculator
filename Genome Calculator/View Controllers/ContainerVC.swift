//
//  ContainerVC.swift
//  Genome Calculator
//
//  Created by Can Balkaya on 4/15/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit
import CoreData

class ContainerVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet var textField: [UITextField]!
    
    var chosenGene = ""
    
    var eyesTexts = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    var skinTexts = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    var hairTexts = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    var anemiaTexts = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    
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
        textField?[0].inputView = firstPicker
        textField?[1].inputView = secondPicker
        textField?[2].inputView = thirdPicker
        textField?[3].inputView = fourthPicker
        textField?[4].inputView = fifthPicker
        textField?[5].inputView = sixthPicker
        textField?[6].inputView = seventhPicker
        textField?[7].inputView = eighthPicker
        textField?[8].inputView = ninthPicker
        textField?[9].inputView = tenthPicker
        textField?[10].inputView = eleventhPicker
        textField?[11].inputView = twelfthPicker
        textField?[12].inputView = thirteenthPicker
        textField?[13].inputView = fourteenthPicker
        textField?[14].inputView = fifteenthPicker
        textField?[15].inputView = sixteenthPicker
        textField?[16].inputView = seventeenthPicker
        textField?[17].inputView = eighteenthPicker
        textField?[18].inputView = ninteenthPicker
        textField?[19].inputView = twentiethPicker
        textField?[20].inputView = twentyFirstPicker
        textField?[21].inputView = twentySecondPicker
        textField?[22].inputView = twentyThirthPicker
        textField?[23].inputView = twentyFourthPicker
        textField?[24].inputView = twentyFifthPicker
        textField?[25].inputView = twentySixthPicker
        textField?[26].inputView = twentySeventhPicker
        textField?[27].inputView = twentyEighthPicker
        textField?[28].inputView = twentyNinthPicker
        textField?[29].inputView = thirtiethPicker
        textField?[30].inputView = thirtyFirstPicker
        textField?[31].inputView = thirtySecondPicker
        textField?[32].inputView = thirtyThirdPicker
        textField?[33].inputView = thirtyFourthPicker
        textField?[34].inputView = thirtyFifthPicker
        textField?[35].inputView = thirtySixthPicker
        textField?[36].inputView = thirtySeventhPicker
        textField?[37].inputView = thirtyEighthPicker
        textField?[38].inputView = thirtyNinthPicker
        textField?[39].inputView = fortiethPicker
        textField?[40].inputView = fourtyFirstPicker
        textField?[41].inputView = fourtySecondPicker
        textField?[42].inputView = fourtyThirdPicker
        textField?[43].inputView = fourtyFourthPicker
        textField?[44].inputView = fourtyFifthPicker
        textField?[45].inputView = fourtySixthPicker
        textField?[46].inputView = fourtySeventhPicker
        textField?[47].inputView = fourtyEighthPicker
        textField?[48].inputView = fourtyNinthPicker
        textField?[49].inputView = fiftiethPicker
        textField?[50].inputView = fiftyFirstPicker
        textField?[51].inputView = fiftySecondPicker
        textField?[52].inputView = fiftyThirdPicker
        textField?[53].inputView = fiftyFourthPicker
        textField?[54].inputView = fiftyFifthPicker
        textField?[55].inputView = fiftySixthPicker
        
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
            textField?[0].text = eyesColors[row]
        } else if pickerView == secondPicker {
            textField?[1].text = skinColors[row]
        } else if pickerView == thirdPicker {
            textField?[2].text = hairColors[row]
        } else if pickerView == fourthPicker {
            textField?[3].text = anemiaCases[row]
        } else if pickerView == fifthPicker {
            textField?[4].text = eyesColors[row]
        } else if pickerView == sixthPicker {
            textField?[5].text = skinColors[row]
        } else if pickerView == seventhPicker {
            textField?[6].text = hairColors[row]
        } else if pickerView == eighthPicker {
            textField?[7].text = anemiaCases[row]
        } else if pickerView == ninthPicker {
            textField?[8].text = eyesColors[row]
        } else if pickerView == tenthPicker {
            textField?[9].text = skinColors[row]
        } else if pickerView == eleventhPicker {
            textField?[10].text = hairColors[row]
        } else if pickerView == twentiethPicker {
            textField?[11].text = anemiaCases[row]
        } else if pickerView == thirteenthPicker {
            textField?[12].text = eyesColors[row]
        } else if pickerView == fourteenthPicker {
            textField?[13].text = skinColors[row]
        } else if pickerView == fifteenthPicker {
            textField?[14].text = hairColors[row]
        } else if pickerView == sixteenthPicker {
            textField?[15].text = anemiaCases[row]
        } else if pickerView == seventhPicker {
            textField?[16].text = eyesColors[row]
        } else if pickerView == eighteenthPicker {
            textField?[17].text = skinColors[row]
        } else if pickerView == ninteenthPicker {
            textField?[18].text = hairColors[row]
        } else if pickerView == twentiethPicker {
            textField?[19].text = anemiaCases[row]
        } else if pickerView == twentyFirstPicker {
            textField?[20].text = eyesColors[row]
        } else if pickerView == twentySecondPicker {
            textField?[21].text = skinColors[row]
        } else if pickerView == twentyThirthPicker {
            textField?[22].text = hairColors[row]
        } else if pickerView == twentyFourthPicker {
            textField?[23].text = anemiaCases[row]
        } else if pickerView == twentyFifthPicker {
            textField?[24].text = eyesColors[row]
        } else if pickerView == twentySixthPicker {
            textField?[25].text = skinColors[row]
        } else if pickerView == twentySeventhPicker {
            textField?[26].text = hairColors[row]
        } else if pickerView == twentyEighthPicker {
            textField?[27].text = anemiaCases[row]
        } else if pickerView == twentyNinthPicker {
            textField?[28].text = eyesColors[row]
        } else if pickerView == thirtiethPicker {
            textField?[29].text = skinColors[row]
        } else if pickerView == thirtyFirstPicker {
            textField?[30].text = hairColors[row]
        } else if pickerView == thirtySecondPicker {
            textField?[31].text = anemiaCases[row]
        } else if pickerView == thirtyThirdPicker {
            textField?[32].text = eyesColors[row]
        } else if pickerView == thirtyFourthPicker {
            textField?[33].text = skinColors[row]
        } else if pickerView == thirtyFifthPicker {
            textField?[34].text = hairColors[row]
        } else if pickerView == thirtySixthPicker {
            textField?[35].text = anemiaCases[row]
        } else if pickerView == thirtySeventhPicker {
            textField?[36].text = eyesColors[row]
        } else if pickerView == thirtyEighthPicker {
            textField?[37].text = skinColors[row]
        } else if pickerView == thirtyNinthPicker {
            textField?[38].text = hairColors[row]
        } else if pickerView == fortiethPicker {
            textField?[39].text = anemiaCases[row]
        } else if pickerView == fourtyFirstPicker {
            textField?[40].text = eyesColors[row]
        } else if pickerView == fourtySecondPicker {
            textField?[41].text = skinColors[row]
        } else if pickerView == fourtyThirdPicker {
            textField?[42].text = hairColors[row]
        } else if pickerView == fourtyFourthPicker {
            textField?[43].text = anemiaCases[row]
        } else if pickerView == fourtyFifthPicker {
            textField?[44].text = eyesColors[row]
        } else if pickerView == fourtySixthPicker {
            textField?[45].text = skinColors[row]
        } else if pickerView == fourtySeventhPicker {
            textField?[46].text = hairColors[row]
        } else if pickerView == fourtyEighthPicker {
            textField?[47].text = anemiaCases[row]
        } else if pickerView == fourtyNinthPicker {
            textField?[48].text = eyesColors[row]
        } else if pickerView == fiftiethPicker {
            textField?[49].text = skinColors[row]
        } else if pickerView == fiftyFirstPicker {
            textField?[50].text = hairColors[row]
        } else if pickerView == fiftySecondPicker {
            textField?[51].text = anemiaCases[row]
        } else if pickerView == fiftyThirdPicker {
            textField?[52].text = eyesColors[row]
        } else if pickerView == fiftyFourthPicker {
            textField?[53].text = skinColors[row]
        } else if pickerView == fiftyFifthPicker {
            textField?[54].text = hairColors[row]
        } else if pickerView == fiftySixthPicker {
            textField?[55].text = anemiaCases[row]
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
                        textField?[0].text = momE
                    }

                    if let momS = result.value(forKey: "momSkinC") as? String {
                        textField?[1].text = momS
                    }

                    if let momH = result.value(forKey: "momHairC") as? String {
                        textField?[2].text = momH
                    }

                    if let momA = result.value(forKey: "momAnemiaC") as? String {
                        textField?[3].text = momA
                    }

                    // Dad
                    if let dadE = result.value(forKey: "dadEyesC") as? String {
                        textField?[4].text = dadE
                    }

                    if let dadS = result.value(forKey: "dadSkinC") as? String {
                        textField?[5].text = dadS
                    }

                    if let dadH = result.value(forKey: "dadHairC") as? String {
                        textField?[6].text = dadH
                    }

                    if let dadA = result.value(forKey: "dadAnemiaC") as? String {
                        textField?[7].text = dadA
                    }

                    // Mom's Mom
                    if let momsMomE = result.value(forKey: "momsMomEyesC") as? String {
                        textField?[8].text = momsMomE
                    }

                    if let momsMomS = result.value(forKey: "momsMomSkinC") as? String {
                        textField?[9].text = momsMomS
                    }

                    if let momsMomH = result.value(forKey: "momsMomHairC") as? String {
                        textField?[10].text = momsMomH
                    }

                    if let momsMomA = result.value(forKey: "momsMomAnemiaC") as? String {
                        textField?[11].text = momsMomA
                    }

                    // Mom's Dad
                    if let momsDadE = result.value(forKey: "momsDadEyesC") as? String {
                        textField?[12].text = momsDadE
                    }

                    if let momsDadS = result.value(forKey: "momsDadSkinC") as? String {
                        textField?[13].text = momsDadS
                    }

                    if let momsDadH = result.value(forKey: "momsDadHairC") as? String {
                        textField?[14].text = momsDadH
                    }

                    if let momsDadA = result.value(forKey: "momsDadAnemiaC") as? String {
                        textField?[15].text = momsDadA
                    }

                    // Dad's Mom
                    if let dadsMomE = result.value(forKey: "dadsMomEyesC") as? String {
                        textField?[16].text = dadsMomE
                    }

                    if let dadsMomS = result.value(forKey: "dadsMomSkinC") as? String {
                        textField?[17].text = dadsMomS
                    }

                    if let dadsMomH = result.value(forKey: "dadsMomHairC") as? String {
                        textField?[18].text = dadsMomH
                    }

                    if let dadsMomA = result.value(forKey: "dadsMomAnemiaC") as? String {
                        textField?[19].text = dadsMomA
                    }

                    // Dad's Dad
                    if let dadsDadE = result.value(forKey: "dadsDadEyesC") as? String {
                        textField?[20].text = dadsDadE
                    }

                    if let dadsDadS = result.value(forKey: "dadsDadSkinC") as? String {
                        textField?[21].text = dadsDadS
                    }

                    if let dadsDadH = result.value(forKey: "dadsDadHairC") as? String {
                        textField?[22].text = dadsDadH
                    }

                    if let dadsDadA = result.value(forKey: "dadsDadAnemiaC") as? String {
                        textField?[23].text = dadsDadA
                    }

                    // Mom's Mom's Mom
                    if let momsMomsMomE = result.value(forKey: "momsMomsMomEyesC") as? String {
                        textField?[24].text = momsMomsMomE
                    }

                    if let momsMomsMomS = result.value(forKey: "momsMomsMomSkinC") as? String {
                        textField?[25].text = momsMomsMomS
                    }

                    if let momsMomsMomH = result.value(forKey: "momsMomsMomHairC") as? String {
                        textField?[26].text = momsMomsMomH
                    }

                    if let momsMomsMomA = result.value(forKey: "momsMomsMomAnemiaC") as? String {
                        textField?[27].text = momsMomsMomA
                    }

                    // Mom's Mom's Dad
                    if let momsMomsDadE = result.value(forKey: "momsMomsDadEyesC") as? String {
                        textField?[28].text = momsMomsDadE
                    }

                    if let momsMomsDadS = result.value(forKey: "momsMomsDadSkinC") as? String {
                        textField?[29].text = momsMomsDadS
                    }

                    if let momsMomsDadH = result.value(forKey: "momsMomsDadHairC") as? String {
                        textField?[30].text = momsMomsDadH
                    }

                    if let momsMomsDadA = result.value(forKey: "momsMomsDadAnemiaC") as? String {
                        textField?[31].text = momsMomsDadA
                    }

                    // Mom's Dad's Mom
                    if let momsDadsMomE = result.value(forKey: "momsDadsMomEyesC") as? String {
                        textField?[32].text = momsDadsMomE
                    }

                    if let momsDadsMomS = result.value(forKey: "momsDadsMomSkinC") as? String {
                        textField?[33].text = momsDadsMomS
                    }

                    if let momsDadsMomH = result.value(forKey: "momsDadsMomHairC") as? String {
                        textField?[34].text = momsDadsMomH
                    }

                    if let momsDadsMomA = result.value(forKey: "momsDadsMomAnemiaC") as? String {
                        textField?[35].text = momsDadsMomA
                    }

                    // Mom's Dad's Dad
                    if let momsDadsDadE = result.value(forKey: "momsDadsDadEyesC") as? String {
                        textField?[36].text = momsDadsDadE
                    }

                    if let momsDadsDadS = result.value(forKey: "momsDadsDadSkinC") as? String {
                        textField?[37].text = momsDadsDadS
                    }

                    if let momsDadsDadH = result.value(forKey: "momsDadsDadHairC") as? String {
                        textField?[38].text = momsDadsDadH
                    }

                    if let momsDadsDadA = result.value(forKey: "momsDadsDadAnemiaC") as? String {
                        textField?[39].text = momsDadsDadA
                    }

                    // Dads Moms Mom
                    if let dadsMomsMomE = result.value(forKey: "dadsMomsMomEyesC") as? String {
                        textField?[40].text = dadsMomsMomE
                    }

                    if let dadsMomsMomS = result.value(forKey: "dadsMomsMomSkinC") as? String {
                        textField?[41].text = dadsMomsMomS
                    }

                    if let dadsMomsMomH = result.value(forKey: "dadsMomsMomHairC") as? String {
                        textField?[42].text = dadsMomsMomH
                    }

                    if let dadsMomsMomA = result.value(forKey: "dadsMomsMomAnemiaC") as? String {
                        textField?[43].text = dadsMomsMomA
                    }

                    // Dads Moms Dad
                    if let dadsMomsDadE = result.value(forKey: "dadsMomsDadEyesC") as? String {
                        textField?[44].text = dadsMomsDadE
                    }

                    if let dadsMomsDadS = result.value(forKey: "dadsMomsDadSkinC") as? String {
                        textField?[45].text = dadsMomsDadS
                    }

                    if let dadsMomsDadH = result.value(forKey: "dadsMomsDadHairC") as? String {
                        textField?[46].text = dadsMomsDadH
                    }

                    if let dadsMomsDadA = result.value(forKey: "dadsMomsDadAnemiaC") as? String {
                        textField?[47].text = dadsMomsDadA
                    }

                    // Dads Dads Mom
                    if let dadsDadsMomE = result.value(forKey: "dadsDadsMomEyesC") as? String {
                        textField?[48].text = dadsDadsMomE
                    }

                    if let dadsDadsMomS = result.value(forKey: "dadsDadsMomSkinC") as? String {
                        textField?[49].text = dadsDadsMomS
                    }

                    if let dadsDadsMomH = result.value(forKey: "dadsDadsMomHairC") as? String {
                        textField?[50].text = dadsDadsMomH
                    }

                    if let dadsDadsMomA = result.value(forKey: "dadsDadsMomAnemiaC") as? String {
                        textField?[51].text = dadsDadsMomA
                    }

                    // Dads Dads Dad
                    if let dadsDadsDadE = result.value(forKey: "dadsDadsDadEyesC") as? String {
                        textField?[52].text = dadsDadsDadE
                    }

                    if let dadsDadsDadS = result.value(forKey: "dadsDadsDadSkinC") as? String {
                        textField?[53].text = dadsDadsDadS
                    }

                    if let dadsDadsDadH = result.value(forKey: "dadsDadsDadHairC") as? String {
                        textField?[54].text = dadsDadsDadH
                    }

                    if let dadsDadsDadA = result.value(forKey: "dadsDadsDadAnemiaC") as? String {
                        textField?[55].text = dadsDadsDadA
                    }
                }
            }
        }
    }
    
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
        
        nameTextField?.inputAccessoryView = toolBar
        textField?[0].inputAccessoryView = toolBar
        textField?[1].inputAccessoryView = toolBar
        textField?[2].inputAccessoryView = toolBar
        textField?[3].inputAccessoryView = toolBar
        textField?[4].inputAccessoryView = toolBar
        textField?[5].inputAccessoryView = toolBar
        textField?[6].inputAccessoryView = toolBar
        textField?[7].inputAccessoryView = toolBar
        textField?[8].inputAccessoryView = toolBar
        textField?[9].inputAccessoryView = toolBar
        textField?[10].inputAccessoryView = toolBar
        textField?[11].inputAccessoryView = toolBar
        textField?[12].inputAccessoryView = toolBar
        textField?[13].inputAccessoryView = toolBar
        textField?[14].inputAccessoryView = toolBar
        textField?[15].inputAccessoryView = toolBar
        textField?[16].inputAccessoryView = toolBar
        textField?[17].inputAccessoryView = toolBar
        textField?[18].inputAccessoryView = toolBar
        textField?[19].inputAccessoryView = toolBar
        textField?[20].inputAccessoryView = toolBar
        textField?[21].inputAccessoryView = toolBar
        textField?[22].inputAccessoryView = toolBar
        textField?[23].inputAccessoryView = toolBar
        textField?[24].inputAccessoryView = toolBar
        textField?[25].inputAccessoryView = toolBar
        textField?[26].inputAccessoryView = toolBar
        textField?[27].inputAccessoryView = toolBar
        textField?[28].inputAccessoryView = toolBar
        textField?[29].inputAccessoryView = toolBar
        textField?[30].inputAccessoryView = toolBar
        textField?[31].inputAccessoryView = toolBar
        textField?[32].inputAccessoryView = toolBar
        textField?[33].inputAccessoryView = toolBar
        textField?[34].inputAccessoryView = toolBar
        textField?[35].inputAccessoryView = toolBar
        textField?[36].inputAccessoryView = toolBar
        textField?[37].inputAccessoryView = toolBar
        textField?[38].inputAccessoryView = toolBar
        textField?[39].inputAccessoryView = toolBar
        textField?[40].inputAccessoryView = toolBar
        textField?[41].inputAccessoryView = toolBar
        textField?[42].inputAccessoryView = toolBar
        textField?[43].inputAccessoryView = toolBar
        textField?[44].inputAccessoryView = toolBar
        textField?[45].inputAccessoryView = toolBar
        textField?[46].inputAccessoryView = toolBar
        textField?[47].inputAccessoryView = toolBar
        textField?[48].inputAccessoryView = toolBar
        textField?[49].inputAccessoryView = toolBar
        textField?[50].inputAccessoryView = toolBar
        textField?[51].inputAccessoryView = toolBar
        textField?[52].inputAccessoryView = toolBar
        textField?[53].inputAccessoryView = toolBar
        textField?[54].inputAccessoryView = toolBar
        textField?[55].inputAccessoryView = toolBar
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
            label.text = hairColors[row]
        } else if pickerView == fourthPicker {
            label.text = anemiaCases[row]
        } else if pickerView == fifthPicker {
            label.text = eyesColors[row]
        } else if pickerView == sixthPicker {
            label.text = skinColors[row]
        } else if pickerView == seventhPicker {
            label.text = hairColors[row]
        } else if pickerView == eighthPicker {
            label.text = anemiaCases[row]
        } else if pickerView == ninthPicker {
            label.text = eyesColors[row]
        } else if pickerView == tenthPicker {
            label.text = skinColors[row]
        } else if pickerView == eleventhPicker {
            label.text = hairColors[row]
        } else if pickerView == twelfthPicker {
            label.text = anemiaCases[row]
        } else if pickerView == thirteenthPicker {
            label.text = eyesColors[row]
        } else if pickerView == fourteenthPicker {
            label.text = skinColors[row]
        } else if pickerView == fifteenthPicker {
            label.text = hairColors[row]
        } else if pickerView == sixteenthPicker {
            label.text = anemiaCases[row]
        } else if pickerView == seventeenthPicker {
            label.text = eyesColors[row]
        } else if pickerView == eighteenthPicker {
            label.text = skinColors[row]
        } else if pickerView == ninteenthPicker {
            label.text = hairColors[row]
        } else if pickerView == twentiethPicker {
            label.text = anemiaCases[row]
        } else if pickerView == twentyFirstPicker {
            label.text = eyesColors[row]
        } else if pickerView == twentySecondPicker {
            label.text = skinColors[row]
        } else if pickerView == twentyThirthPicker {
            label.text = hairColors[row]
        } else if pickerView == twentyFourthPicker {
            label.text = anemiaCases[row]
        } else if pickerView == twentyFifthPicker {
            label.text = eyesColors[row]
        } else if pickerView == twentySixthPicker {
            label.text = skinColors[row]
        } else if pickerView == twentySeventhPicker {
            label.text = hairColors[row]
        } else if pickerView == twentyEighthPicker {
            label.text = anemiaCases[row]
        } else if pickerView == twentyNinthPicker {
            label.text = eyesColors[row]
        } else if pickerView == thirtiethPicker {
            label.text = skinColors[row]
        } else if pickerView == thirtyFirstPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtySecondPicker {
            label.text = anemiaCases[row]
        } else if pickerView == thirtyThirdPicker {
            label.text = eyesColors[row]
        } else if pickerView == thirtyFourthPicker {
            label.text = skinColors[row]
        } else if pickerView == thirtyFifthPicker {
            label.text = hairColors[row]
        } else if pickerView == thirtySixthPicker {
            label.text = anemiaCases[row]
        } else if pickerView == thirtySeventhPicker {
            label.text = eyesColors[row]
        } else if pickerView == thirtyEighthPicker {
            label.text = skinColors[row]
        } else if pickerView == thirtyNinthPicker {
            label.text = hairColors[row]
        } else if pickerView == fortiethPicker {
            label.text = anemiaCases[row]
        } else if pickerView == fourtyFirstPicker {
            label.text = eyesColors[row]
        } else if pickerView == fourtySecondPicker {
            label.text = skinColors[row]
        } else if pickerView == fourtyThirdPicker {
            label.text = hairColors[row]
        } else if pickerView == fourtyFourthPicker {
            label.text = anemiaCases[row]
        } else if pickerView == fourtyFifthPicker {
            label.text = eyesColors[row]
        } else if pickerView == fourtySixthPicker {
            label.text = skinColors[row]
        } else if pickerView == fourtySeventhPicker {
            label.text = hairColors[row]
        } else if pickerView == fourtyEighthPicker {
            label.text = anemiaCases[row]
        } else if pickerView == fourtyNinthPicker {
            label.text = eyesColors[row]
        } else if pickerView == fiftiethPicker {
            label.text = skinColors[row]
        } else if pickerView == fiftyFirstPicker {
            label.text = hairColors[row]
        } else if pickerView == fiftySecondPicker {
            label.text = anemiaCases[row]
        } else if pickerView == fiftyThirdPicker {
            label.text = eyesColors[row]
        } else if pickerView == fiftyFourthPicker {
            label.text = skinColors[row]
        } else if pickerView == fiftyFifthPicker {
            label.text = hairColors[row]
        } else if pickerView == fiftySixthPicker {
            label.text = anemiaCases[row]
        }
        return label
    }
}
