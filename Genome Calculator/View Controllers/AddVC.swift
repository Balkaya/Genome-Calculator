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
    
    let textFields1 = UITextField()
    let textFields2 = UITextField()
    let textFields3 = UITextField()
    let textFields4 = UITextField()
    let textFields5 = UITextField()
    let textFields6 = UITextField()
    let textFields7 = UITextField()
    let textFields8 = UITextField()
    let textFields9 = UITextField()
    let textFields10 = UITextField()
    let textFields11 = UITextField()
    let textFields12 = UITextField()
    let textFields13 = UITextField()
    let textFields14 = UITextField()
    let textFields15 = UITextField()
    let textFields16 = UITextField()
    let textFields17 = UITextField()
    let textFields18 = UITextField()
    let textFields19 = UITextField()
    let textFields20 = UITextField()
    let textFields21 = UITextField()
    let textFields22 = UITextField()
    let textFields23 = UITextField()
    let textFields24 = UITextField()
    let textFields25 = UITextField()
    let textFields26 = UITextField()
    let textFields27 = UITextField()
    let textFields28 = UITextField()
    let textFields29 = UITextField()
    let textFields30 = UITextField()
    let textFields31 = UITextField()
    let textFields32 = UITextField()
    let textFields33 = UITextField()
    let textFields34 = UITextField()
    let textFields35 = UITextField()
    let textFields36 = UITextField()
    let textFields37 = UITextField()
    let textFields38 = UITextField()
    let textFields39 = UITextField()
    let textFields40 = UITextField()
    let textFields41 = UITextField()
    let textFields42 = UITextField()
    let textFields43 = UITextField()
    let textFields44 = UITextField()
    let textFields45 = UITextField()
    let textFields46 = UITextField()
    let textFields47 = UITextField()
    let textFields48 = UITextField()
    let textFields49 = UITextField()
    let textFields50 = UITextField()
    let textFields51 = UITextField()
    let textFields52 = UITextField()
    let textFields53 = UITextField()
    let textFields54 = UITextField()
    let textFields55 = UITextField()
    let textFields56 = UITextField()
    
    var chosenGene = ""
    
    var nameText = ""
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
        
        if chosenGene != "" {
            retrieveData()
        }
        
        //        textFieldsForEyes = [textFields[0].text, textFields[4].text, textFields[8].text, textFields[12].text, textFields[16].text, textFields[20].text, textFields[24].text, textFields[28].text, textFields[32].text, textFields[36].text, textFields[40].text, textFields[44].text, textFields[48].text, textFields[52].text] as! [String]
        //        textFieldsForSkin = [textFields?[1].text, textFields?[5].text, textFields?[9].text, textFields?[13].text, textFields?[17].text, textFields?[21].text, textFields?[25].text, textFields?[29].text, textFields?[33].text, textFields?[37].text, textFields?[41].text, textFields?[45].text, textFields?[49].text, textFields?[53].text] as! [String]
        //        textFieldsForHair = [textFields?[2].text, textFields?[6].text, textFields?[10].text, textFields?[14].text, textFields?[18].text, textFields?[22].text, textFields?[26].text, textFields?[30].text, textFields?[34].text, textFields?[38].text, textFields?[42].text, textFields?[46].text, textFields?[50].text, textFields?[54].text] as! [String]
        //        textFieldsForAnemia = [textFields?[3].text, textFields?[7].text, textFields?[11].text, textFields?[15].text, textFields?[19].text, textFields?[23].text, textFields?[27].text, textFields?[31].text, textFields?[35].text, textFields?[39].text, textFields?[43].text, textFields?[47].text, textFields?[51].text, textFields?[55].text] as! [String]
        
        //        textFieldsForEyes.append(textFields![0].text!)
        //        textFieldsForSkin.append(textFields![1].text!)
        //        textFieldsForHair.append(textFields![2].text!)
        //        textFieldsForAnemia.append(textFields![3].text!)
        
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
        textFields1.inputView = firstPicker
        textFields2.inputView = secondPicker
        textFields3.inputView = thirdPicker
        textFields4.inputView = fourthPicker
        textFields5.inputView = fifthPicker
        textFields6.inputView = sixthPicker
        textFields7.inputView = seventhPicker
        textFields8.inputView = eighthPicker
        textFields9.inputView = ninthPicker
        textFields10.inputView = tenthPicker
        textFields11.inputView = eleventhPicker
        textFields12.inputView = twelfthPicker
        textFields13.inputView = thirteenthPicker
        textFields14.inputView = fourteenthPicker
        textFields15.inputView = fifteenthPicker
        textFields16.inputView = sixteenthPicker
        textFields17.inputView = seventeenthPicker
        textFields18.inputView = eighteenthPicker
        textFields19.inputView = ninteenthPicker
        textFields20.inputView = twentiethPicker
        textFields21.inputView = twentyFirstPicker
        textFields22.inputView = twentySecondPicker
        textFields23.inputView = twentyThirthPicker
        textFields24.inputView = twentyFourthPicker
        textFields25.inputView = twentyFifthPicker
        textFields26.inputView = twentySixthPicker
        textFields27.inputView = twentySeventhPicker
        textFields28.inputView = twentyEighthPicker
        textFields29.inputView = twentyNinthPicker
        textFields30.inputView = thirtiethPicker
        textFields31.inputView = thirtyFirstPicker
        textFields32.inputView = thirtySecondPicker
        textFields33.inputView = thirtyThirdPicker
        textFields34.inputView = thirtyFourthPicker
        textFields35.inputView = thirtyFifthPicker
        textFields36.inputView = thirtySixthPicker
        textFields37.inputView = thirtySeventhPicker
        textFields38.inputView = thirtyEighthPicker
        textFields39.inputView = thirtyNinthPicker
        textFields40.inputView = fortiethPicker
        textFields41.inputView = fourtyFirstPicker
        textFields42.inputView = fourtySecondPicker
        textFields43.inputView = fourtyThirdPicker
        textFields44.inputView = fourtyFourthPicker
        textFields45.inputView = fourtyFifthPicker
        textFields46.inputView = fourtySixthPicker
        textFields47.inputView = fourtySeventhPicker
        textFields48.inputView = fourtyEighthPicker
        textFields49.inputView = fourtyNinthPicker
        textFields50.inputView = fiftiethPicker
        textFields51.inputView = fiftyFirstPicker
        textFields52.inputView = fiftySecondPicker
        textFields53.inputView = fiftyThirdPicker
        textFields54.inputView = fiftyFourthPicker
        textFields55.inputView = fiftyFifthPicker
        textFields56.inputView = fiftySixthPicker
        
        //        textFields?[0].inputView = firstPicker
        //        textFields?[1].inputView = secondPicker
        //        textFields?[2].inputView = thirdPicker
        //        textFields?[3].inputView = fourthPicker
        //        textFields?[4].inputView = fifthPicker
        //        textFields?[5].inputView = sixthPicker
        //        textFields?[6].inputView = seventhPicker
        //        textFields?[7].inputView = eighthPicker
        //        textFields?[8].inputView = ninthPicker
        //        textFields?[9].inputView = tenthPicker
        //        textFields?[10].inputView = eleventhPicker
        //        textFields?[11].inputView = twelfthPicker
        //        textFields?[12].inputView = thirteenthPicker
        //        textFields?[13].inputView = fourteenthPicker
        //        textFields?[14].inputView = fifteenthPicker
        //        textFields?[15].inputView = sixteenthPicker
        //        textFields?[16].inputView = seventeenthPicker
        //        textFields?[17].inputView = eighteenthPicker
        //        textFields?[18].inputView = ninteenthPicker
        //        textFields?[19].inputView = twentiethPicker
        //        textFields?[20].inputView = twentyFirstPicker
        //        textFields?[21].inputView = twentySecondPicker
        //        textFields?[22].inputView = twentyThirthPicker
        //        textFields?[23].inputView = twentyFourthPicker
        //        textFields?[24].inputView = twentyFifthPicker
        //        textFields?[25].inputView = twentySixthPicker
        //        textFields?[26].inputView = twentySeventhPicker
        //        textFields?[27].inputView = twentyEighthPicker
        //        textFields?[28].inputView = twentyNinthPicker
        //        textFields?[29].inputView = thirtiethPicker
        //        textFields?[30].inputView = thirtyFirstPicker
        //        textFields?[31].inputView = thirtySecondPicker
        //        textFields?[32].inputView = thirtyThirdPicker
        //        textFields?[33].inputView = thirtyFourthPicker
        //        textFields?[34].inputView = thirtyFifthPicker
        //        textFields?[35].inputView = thirtySixthPicker
        //        textFields?[36].inputView = thirtySeventhPicker
        //        textFields?[37].inputView = thirtyEighthPicker
        //        textFields?[38].inputView = thirtyNinthPicker
        //        textFields?[39].inputView = fortiethPicker
        //        textFields?[40].inputView = fourtyFirstPicker
        //        textFields?[41].inputView = fourtySecondPicker
        //        textFields?[42].inputView = fourtyThirdPicker
        //        textFields?[43].inputView = fourtyFourthPicker
        //        textFields?[44].inputView = fourtyFifthPicker
        //        textFields?[45].inputView = fourtySixthPicker
        //        textFields?[46].inputView = fourtySeventhPicker
        //        textFields?[47].inputView = fourtyEighthPicker
        //        textFields?[48].inputView = fourtyNinthPicker
        //        textFields?[49].inputView = fiftiethPicker
        //        textFields?[50].inputView = fiftyFirstPicker
        //        textFields?[51].inputView = fiftySecondPicker
        //        textFields?[52].inputView = fiftyThirdPicker
        //        textFields?[53].inputView = fiftyFourthPicker
        //        textFields?[54].inputView = fiftyFifthPicker
        //        textFields?[55].inputView = fiftySixthPicker
        
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
            textFields1.text = eyesColors[row]
        } else if pickerView == secondPicker {
            textFields2.text = skinColors[row]
        } else if pickerView == thirdPicker {
            textFields3.text = hairColors[row]
        } else if pickerView == fourthPicker {
            textFields4.text = anemiaCases[row]
        } else if pickerView == fifthPicker {
            textFields5.text = eyesColors[row]
        } else if pickerView == sixthPicker {
            textFields6.text = skinColors[row]
        } else if pickerView == seventhPicker {
            textFields7.text = hairColors[row]
        } else if pickerView == eighthPicker {
            textFields8.text = anemiaCases[row]
        } else if pickerView == ninthPicker {
            textFields9.text = eyesColors[row]
        } else if pickerView == tenthPicker {
            textFields10.text = skinColors[row]
        } else if pickerView == eleventhPicker {
            textFields11.text = hairColors[row]
        } else if pickerView == twentiethPicker {
            textFields12.text = anemiaCases[row]
        } else if pickerView == thirteenthPicker {
            textFields13.text = eyesColors[row]
        } else if pickerView == fourteenthPicker {
            textFields14.text = skinColors[row]
        } else if pickerView == fifteenthPicker {
            textFields15.text = hairColors[row]
        } else if pickerView == sixteenthPicker {
            textFields16.text = anemiaCases[row]
        } else if pickerView == seventhPicker {
            textFields17.text = eyesColors[row]
        } else if pickerView == eighteenthPicker {
            textFields18.text = skinColors[row]
        } else if pickerView == ninteenthPicker {
            textFields19.text = hairColors[row]
        } else if pickerView == twentiethPicker {
            textFields20.text = anemiaCases[row]
        } else if pickerView == twentyFirstPicker {
            textFields21.text = eyesColors[row]
        } else if pickerView == twentySecondPicker {
            textFields22.text = skinColors[row]
        } else if pickerView == twentyThirthPicker {
            textFields23.text = hairColors[row]
        } else if pickerView == twentyFourthPicker {
            textFields24.text = anemiaCases[row]
        } else if pickerView == twentyFifthPicker {
            textFields25.text = eyesColors[row]
        } else if pickerView == twentySixthPicker {
            textFields26.text = skinColors[row]
        } else if pickerView == twentySeventhPicker {
            textFields27.text = hairColors[row]
        } else if pickerView == twentyEighthPicker {
            textFields28.text = anemiaCases[row]
        } else if pickerView == twentyNinthPicker {
            textFields29.text = eyesColors[row]
        } else if pickerView == thirtiethPicker {
            textFields30.text = skinColors[row]
        } else if pickerView == thirtyFirstPicker {
            textFields31.text = hairColors[row]
        } else if pickerView == thirtySecondPicker {
            textFields32.text = anemiaCases[row]
        } else if pickerView == thirtyThirdPicker {
            textFields33.text = eyesColors[row]
        } else if pickerView == thirtyFourthPicker {
            textFields34.text = skinColors[row]
        } else if pickerView == thirtyFifthPicker {
            textFields35.text = hairColors[row]
        } else if pickerView == thirtySixthPicker {
            textFields36.text = anemiaCases[row]
        } else if pickerView == thirtySeventhPicker {
            textFields37.text = eyesColors[row]
        } else if pickerView == thirtyEighthPicker {
            textFields38.text = skinColors[row]
        } else if pickerView == thirtyNinthPicker {
            textFields39.text = hairColors[row]
        } else if pickerView == fortiethPicker {
            textFields40.text = anemiaCases[row]
        } else if pickerView == fourtyFirstPicker {
            textFields41.text = eyesColors[row]
        } else if pickerView == fourtySecondPicker {
            textFields42.text = skinColors[row]
        } else if pickerView == fourtyThirdPicker {
            textFields43.text = hairColors[row]
        } else if pickerView == fourtyFourthPicker {
            textFields44.text = anemiaCases[row]
        } else if pickerView == fourtyFifthPicker {
            textFields45.text = eyesColors[row]
        } else if pickerView == fourtySixthPicker {
            textFields46.text = skinColors[row]
        } else if pickerView == fourtySeventhPicker {
            textFields47.text = hairColors[row]
        } else if pickerView == fourtyEighthPicker {
            textFields48.text = anemiaCases[row]
        } else if pickerView == fourtyNinthPicker {
            textFields49.text = eyesColors[row]
        } else if pickerView == fiftiethPicker {
            textFields50.text = skinColors[row]
        } else if pickerView == fiftyFirstPicker {
            textFields51.text = hairColors[row]
        } else if pickerView == fiftySecondPicker {
            textFields52.text = anemiaCases[row]
        } else if pickerView == fiftyThirdPicker {
            textFields53.text = eyesColors[row]
        } else if pickerView == fiftyFourthPicker {
            textFields54.text = skinColors[row]
        } else if pickerView == fiftyFifthPicker {
            textFields55.text = hairColors[row]
        } else if pickerView == fiftySixthPicker {
            textFields56.text = anemiaCases[row]
        }
        
        //        if pickerView == firstPicker {
        //            textFields?[0].text = eyesColors[row]
        //        } else if pickerView == secondPicker {
        //            textFields?[1].text = skinColors[row]
        //        } else if pickerView == thirdPicker {
        //            textFields?[2].text = hairColors[row]
        //        } else if pickerView == fourthPicker {
        //            textFields?[3].text = anemiaCases[row]
        //        } else if pickerView == fifthPicker {
        //            textFields?[4].text = eyesColors[row]
        //        } else if pickerView == sixthPicker {
        //            textFields?[5].text = skinColors[row]
        //        } else if pickerView == seventhPicker {
        //            textFields?[6].text = hairColors[row]
        //        } else if pickerView == eighthPicker {
        //            textFields?[7].text = anemiaCases[row]
        //        } else if pickerView == ninthPicker {
        //            textFields?[8].text = eyesColors[row]
        //        } else if pickerView == tenthPicker {
        //            textFields?[9].text = skinColors[row]
        //        } else if pickerView == eleventhPicker {
        //            textFields?[10].text = hairColors[row]
        //        } else if pickerView == twentiethPicker {
        //            textFields?[11].text = anemiaCases[row]
        //        } else if pickerView == thirteenthPicker {
        //            textFields?[12].text = eyesColors[row]
        //        } else if pickerView == fourteenthPicker {
        //            textFields?[13].text = skinColors[row]
        //        } else if pickerView == fifteenthPicker {
        //            textFields?[14].text = hairColors[row]
        //        } else if pickerView == sixteenthPicker {
        //            textFields?[15].text = anemiaCases[row]
        //        } else if pickerView == seventhPicker {
        //            textFields?[16].text = eyesColors[row]
        //        } else if pickerView == eighteenthPicker {
        //            textFields?[17].text = skinColors[row]
        //        } else if pickerView == ninteenthPicker {
        //            textFields?[18].text = hairColors[row]
        //        } else if pickerView == twentiethPicker {
        //            textFields?[19].text = anemiaCases[row]
        //        } else if pickerView == twentyFirstPicker {
        //            textFields?[20].text = eyesColors[row]
        //        } else if pickerView == twentySecondPicker {
        //            textFields?[21].text = skinColors[row]
        //        } else if pickerView == twentyThirthPicker {
        //            textFields?[22].text = hairColors[row]
        //        } else if pickerView == twentyFourthPicker {
        //            textFields?[23].text = anemiaCases[row]
        //        } else if pickerView == twentyFifthPicker {
        //            textFields?[24].text = eyesColors[row]
        //        } else if pickerView == twentySixthPicker {
        //            textFields?[25].text = skinColors[row]
        //        } else if pickerView == twentySeventhPicker {
        //            textFields?[26].text = hairColors[row]
        //        } else if pickerView == twentyEighthPicker {
        //            textFields?[27].text = anemiaCases[row]
        //        } else if pickerView == twentyNinthPicker {
        //            textFields?[28].text = eyesColors[row]
        //        } else if pickerView == thirtiethPicker {
        //            textFields?[29].text = skinColors[row]
        //        } else if pickerView == thirtyFirstPicker {
        //            textFields?[30].text = hairColors[row]
        //        } else if pickerView == thirtySecondPicker {
        //            textFields?[31].text = anemiaCases[row]
        //        } else if pickerView == thirtyThirdPicker {
        //            textFields?[32].text = eyesColors[row]
        //        } else if pickerView == thirtyFourthPicker {
        //            textFields?[33].text = skinColors[row]
        //        } else if pickerView == thirtyFifthPicker {
        //            textFields?[34].text = hairColors[row]
        //        } else if pickerView == thirtySixthPicker {
        //            textFields?[35].text = anemiaCases[row]
        //        } else if pickerView == thirtySeventhPicker {
        //            textFields?[36].text = eyesColors[row]
        //        } else if pickerView == thirtyEighthPicker {
        //            textFields?[37].text = skinColors[row]
        //        } else if pickerView == thirtyNinthPicker {
        //            textFields?[38].text = hairColors[row]
        //        } else if pickerView == fortiethPicker {
        //            textFields?[39].text = anemiaCases[row]
        //        } else if pickerView == fourtyFirstPicker {
        //            textFields?[40].text = eyesColors[row]
        //        } else if pickerView == fourtySecondPicker {
        //            textFields?[41].text = skinColors[row]
        //        } else if pickerView == fourtyThirdPicker {
        //            textFields?[42].text = hairColors[row]
        //        } else if pickerView == fourtyFourthPicker {
        //            textFields?[43].text = anemiaCases[row]
        //        } else if pickerView == fourtyFifthPicker {
        //            textFields?[44].text = eyesColors[row]
        //        } else if pickerView == fourtySixthPicker {
        //            textFields?[45].text = skinColors[row]
        //        } else if pickerView == fourtySeventhPicker {
        //            textFields?[46].text = hairColors[row]
        //        } else if pickerView == fourtyEighthPicker {
        //            textFields?[47].text = anemiaCases[row]
        //        } else if pickerView == fourtyNinthPicker {
        //            textFields?[48].text = eyesColors[row]
        //        } else if pickerView == fiftiethPicker {
        //            textFields?[49].text = skinColors[row]
        //        } else if pickerView == fiftyFirstPicker {
        //            textFields?[50].text = hairColors[row]
        //        } else if pickerView == fiftySecondPicker {
        //            textFields?[51].text = anemiaCases[row]
        //        } else if pickerView == fiftyThirdPicker {
        //            textFields?[52].text = eyesColors[row]
        //        } else if pickerView == fiftyFourthPicker {
        //            textFields?[53].text = skinColors[row]
        //        } else if pickerView == fiftyFifthPicker {
        //            textFields?[54].text = hairColors[row]
        //        } else if pickerView == fiftySixthPicker {
        //            textFields?[55].text = anemiaCases[row]
        //        }
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
                        textFields1.text = momE
                    }
                    
                    if let momS = result.value(forKey: "momSkinC") as? String {
                        textFields2.text = momS
                    }
                    
                    if let momH = result.value(forKey: "momHairC") as? String {
                        textFields3.text = momH
                    }
                    
                    if let momA = result.value(forKey: "momAnemiaC") as? String {
                        textFields4.text = momA
                    }
                    
                    // Dad
                    if let dadE = result.value(forKey: "dadEyesC") as? String {
                        textFields5.text = dadE
                    }
                    
                    if let dadS = result.value(forKey: "dadSkinC") as? String {
                        textFields6.text = dadS
                    }
                    
                    if let dadH = result.value(forKey: "dadHairC") as? String {
                        textFields7.text = dadH
                    }
                    
                    if let dadA = result.value(forKey: "dadAnemiaC") as? String {
                        textFields8.text = dadA
                    }
                    
                    // Mom's Mom
                    if let momsMomE = result.value(forKey: "momsMomEyesC") as? String {
                        textFields9.text = momsMomE
                    }
                    
                    if let momsMomS = result.value(forKey: "momsMomSkinC") as? String {
                        textFields10.text = momsMomS
                    }
                    
                    if let momsMomH = result.value(forKey: "momsMomHairC") as? String {
                        textFields11.text = momsMomH
                    }
                    
                    if let momsMomA = result.value(forKey: "momsMomAnemiaC") as? String {
                        textFields12.text = momsMomA
                    }
                    
                    // Mom's Dad
                    if let momsDadE = result.value(forKey: "momsDadEyesC") as? String {
                        textFields13.text = momsDadE
                    }
                    
                    if let momsDadS = result.value(forKey: "momsDadSkinC") as? String {
                        textFields14.text = momsDadS
                    }
                    
                    if let momsDadH = result.value(forKey: "momsDadHairC") as? String {
                        textFields15.text = momsDadH
                    }
                    
                    if let momsDadA = result.value(forKey: "momsDadAnemiaC") as? String {
                        textFields16.text = momsDadA
                    }
                    
                    // Dad's Mom
                    if let dadsMomE = result.value(forKey: "dadsMomEyesC") as? String {
                        textFields17.text = dadsMomE
                    }
                    
                    if let dadsMomS = result.value(forKey: "dadsMomSkinC") as? String {
                        textFields18.text = dadsMomS
                    }
                    
                    if let dadsMomH = result.value(forKey: "dadsMomHairC") as? String {
                        textFields19.text = dadsMomH
                    }
                    
                    if let dadsMomA = result.value(forKey: "dadsMomAnemiaC") as? String {
                        textFields20.text = dadsMomA
                    }
                    
                    // Dad's Dad
                    if let dadsDadE = result.value(forKey: "dadsDadEyesC") as? String {
                        textFields21.text = dadsDadE
                    }
                    
                    if let dadsDadS = result.value(forKey: "dadsDadSkinC") as? String {
                        textFields22.text = dadsDadS
                    }
                    
                    if let dadsDadH = result.value(forKey: "dadsDadHairC") as? String {
                        textFields23.text = dadsDadH
                    }
                    
                    if let dadsDadA = result.value(forKey: "dadsDadAnemiaC") as? String {
                        textFields24.text = dadsDadA
                    }
                    
                    // Mom's Mom's Mom
                    if let momsMomsMomE = result.value(forKey: "momsMomsMomEyesC") as? String {
                        textFields25.text = momsMomsMomE
                    }
                    
                    if let momsMomsMomS = result.value(forKey: "momsMomsMomSkinC") as? String {
                        textFields26.text = momsMomsMomS
                    }
                    
                    if let momsMomsMomH = result.value(forKey: "momsMomsMomHairC") as? String {
                        textFields27.text = momsMomsMomH
                    }
                    
                    if let momsMomsMomA = result.value(forKey: "momsMomsMomAnemiaC") as? String {
                        textFields28.text = momsMomsMomA
                    }
                    
                    // Mom's Mom's Dad
                    if let momsMomsDadE = result.value(forKey: "momsMomsDadEyesC") as? String {
                        textFields29.text = momsMomsDadE
                    }
                    
                    if let momsMomsDadS = result.value(forKey: "momsMomsDadSkinC") as? String {
                        textFields30.text = momsMomsDadS
                    }
                    
                    if let momsMomsDadH = result.value(forKey: "momsMomsDadHairC") as? String {
                        textFields31.text = momsMomsDadH
                    }
                    
                    if let momsMomsDadA = result.value(forKey: "momsMomsDadAnemiaC") as? String {
                        textFields32.text = momsMomsDadA
                    }
                    
                    // Mom's Dad's Mom
                    if let momsDadsMomE = result.value(forKey: "momsDadsMomEyesC") as? String {
                        textFields33.text = momsDadsMomE
                    }
                    
                    if let momsDadsMomS = result.value(forKey: "momsDadsMomSkinC") as? String {
                        textFields34.text = momsDadsMomS
                    }
                    
                    if let momsDadsMomH = result.value(forKey: "momsDadsMomHairC") as? String {
                        textFields35.text = momsDadsMomH
                    }
                    
                    if let momsDadsMomA = result.value(forKey: "momsDadsMomAnemiaC") as? String {
                        textFields36.text = momsDadsMomA
                    }
                    
                    // Mom's Dad's Dad
                    if let momsDadsDadE = result.value(forKey: "momsDadsDadEyesC") as? String {
                        textFields37.text = momsDadsDadE
                    }
                    
                    if let momsDadsDadS = result.value(forKey: "momsDadsDadSkinC") as? String {
                        textFields38.text = momsDadsDadS
                    }
                    
                    if let momsDadsDadH = result.value(forKey: "momsDadsDadHairC") as? String {
                        textFields39.text = momsDadsDadH
                    }
                    
                    if let momsDadsDadA = result.value(forKey: "momsDadsDadAnemiaC") as? String {
                        textFields40.text = momsDadsDadA
                    }
                    
                    // Dads Moms Mom
                    if let dadsMomsMomE = result.value(forKey: "dadsMomsMomEyesC") as? String {
                        textFields41.text = dadsMomsMomE
                    }
                    
                    if let dadsMomsMomS = result.value(forKey: "dadsMomsMomSkinC") as? String {
                        textFields42.text = dadsMomsMomS
                    }
                    
                    if let dadsMomsMomH = result.value(forKey: "dadsMomsMomHairC") as? String {
                        textFields43.text = dadsMomsMomH
                    }
                    
                    if let dadsMomsMomA = result.value(forKey: "dadsMomsMomAnemiaC") as? String {
                        textFields44.text = dadsMomsMomA
                    }
                    
                    // Dads Moms Dad
                    if let dadsMomsDadE = result.value(forKey: "dadsMomsDadEyesC") as? String {
                        textFields45.text = dadsMomsDadE
                    }
                    
                    if let dadsMomsDadS = result.value(forKey: "dadsMomsDadSkinC") as? String {
                        textFields46.text = dadsMomsDadS
                    }
                    
                    if let dadsMomsDadH = result.value(forKey: "dadsMomsDadHairC") as? String {
                        textFields47.text = dadsMomsDadH
                    }
                    
                    if let dadsMomsDadA = result.value(forKey: "dadsMomsDadAnemiaC") as? String {
                        textFields48.text = dadsMomsDadA
                    }
                    
                    // Dads Dads Mom
                    if let dadsDadsMomE = result.value(forKey: "dadsDadsMomEyesC") as? String {
                        textFields49.text = dadsDadsMomE
                    }
                    
                    if let dadsDadsMomS = result.value(forKey: "dadsDadsMomSkinC") as? String {
                        textFields50.text = dadsDadsMomS
                    }
                    
                    if let dadsDadsMomH = result.value(forKey: "dadsDadsMomHairC") as? String {
                        textFields51.text = dadsDadsMomH
                    }
                    
                    if let dadsDadsMomA = result.value(forKey: "dadsDadsMomAnemiaC") as? String {
                        textFields52.text = dadsDadsMomA
                    }
                    
                    // Dads Dads Dad
                    if let dadsDadsDadE = result.value(forKey: "dadsDadsDadEyesC") as? String {
                        textFields53.text = dadsDadsDadE
                    }
                    
                    if let dadsDadsDadS = result.value(forKey: "dadsDadsDadSkinC") as? String {
                        textFields54.text = dadsDadsDadS
                    }
                    
                    if let dadsDadsDadH = result.value(forKey: "dadsDadsDadHairC") as? String {
                        textFields55.text = dadsDadsDadH
                    }
                    
                    if let dadsDadsDadA = result.value(forKey: "dadsDadsDadAnemiaC") as? String {
                        textFields56.text = dadsDadsDadA
                    }
                    
                    //                    // Mom
                    //                    if let momE = result.value(forKey: "momEyesC") as? String {
                    //                        textFields?[0].text = momE
                    //                    }
                    //
                    //                    if let momS = result.value(forKey: "momSkinC") as? String {
                    //                        textFields?[1].text = momS
                    //                    }
                    //
                    //                    if let momH = result.value(forKey: "momHairC") as? String {
                    //                        textFields?[2].text = momH
                    //                    }
                    //
                    //                    if let momA = result.value(forKey: "momAnemiaC") as? String {
                    //                        textFields?[3].text = momA
                    //                    }
                    //
                    //                    // Dad
                    //                    if let dadE = result.value(forKey: "dadEyesC") as? String {
                    //                        textFields?[4].text = dadE
                    //                    }
                    //
                    //                    if let dadS = result.value(forKey: "dadSkinC") as? String {
                    //                        textFields?[5].text = dadS
                    //                    }
                    //
                    //                    if let dadH = result.value(forKey: "dadHairC") as? String {
                    //                        textFields?[6].text = dadH
                    //                    }
                    //
                    //                    if let dadA = result.value(forKey: "dadAnemiaC") as? String {
                    //                        textFields?[7].text = dadA
                    //                    }
                    //
                    //                    // Mom's Mom
                    //                    if let momsMomE = result.value(forKey: "momsMomEyesC") as? String {
                    //                        textFields?[8].text = momsMomE
                    //                    }
                    //
                    //                    if let momsMomS = result.value(forKey: "momsMomSkinC") as? String {
                    //                        textFields?[9].text = momsMomS
                    //                    }
                    //
                    //                    if let momsMomH = result.value(forKey: "momsMomHairC") as? String {
                    //                        textFields?[10].text = momsMomH
                    //                    }
                    //
                    //                    if let momsMomA = result.value(forKey: "momsMomAnemiaC") as? String {
                    //                        textFields?[11].text = momsMomA
                    //                    }
                    //
                    //                    // Mom's Dad
                    //                    if let momsDadE = result.value(forKey: "momsDadEyesC") as? String {
                    //                        textFields?[12].text = momsDadE
                    //                    }
                    //
                    //                    if let momsDadS = result.value(forKey: "momsDadSkinC") as? String {
                    //                        textFields?[13].text = momsDadS
                    //                    }
                    //
                    //                    if let momsDadH = result.value(forKey: "momsDadHairC") as? String {
                    //                        textFields?[14].text = momsDadH
                    //                    }
                    //
                    //                    if let momsDadA = result.value(forKey: "momsDadAnemiaC") as? String {
                    //                        textFields?[15].text = momsDadA
                    //                    }
                    //
                    //                    // Dad's Mom
                    //                    if let dadsMomE = result.value(forKey: "dadsMomEyesC") as? String {
                    //                        textFields?[16].text = dadsMomE
                    //                    }
                    //
                    //                    if let dadsMomS = result.value(forKey: "dadsMomSkinC") as? String {
                    //                        textFields?[17].text = dadsMomS
                    //                    }
                    //
                    //                    if let dadsMomH = result.value(forKey: "dadsMomHairC") as? String {
                    //                        textFields?[18].text = dadsMomH
                    //                    }
                    //
                    //                    if let dadsMomA = result.value(forKey: "dadsMomAnemiaC") as? String {
                    //                        textFields?[19].text = dadsMomA
                    //                    }
                    //
                    //                    // Dad's Dad
                    //                    if let dadsDadE = result.value(forKey: "dadsDadEyesC") as? String {
                    //                        textFields?[20].text = dadsDadE
                    //                    }
                    //
                    //                    if let dadsDadS = result.value(forKey: "dadsDadSkinC") as? String {
                    //                        textFields?[21].text = dadsDadS
                    //                    }
                    //
                    //                    if let dadsDadH = result.value(forKey: "dadsDadHairC") as? String {
                    //                        textFields?[22].text = dadsDadH
                    //                    }
                    //
                    //                    if let dadsDadA = result.value(forKey: "dadsDadAnemiaC") as? String {
                    //                        textFields?[23].text = dadsDadA
                    //                    }
                    //
                    //                    // Mom's Mom's Mom
                    //                    if let momsMomsMomE = result.value(forKey: "momsMomsMomEyesC") as? String {
                    //                        textFields?[24].text = momsMomsMomE
                    //                    }
                    //
                    //                    if let momsMomsMomS = result.value(forKey: "momsMomsMomSkinC") as? String {
                    //                        textFields?[25].text = momsMomsMomS
                    //                    }
                    //
                    //                    if let momsMomsMomH = result.value(forKey: "momsMomsMomHairC") as? String {
                    //                        textFields?[26].text = momsMomsMomH
                    //                    }
                    //
                    //                    if let momsMomsMomA = result.value(forKey: "momsMomsMomAnemiaC") as? String {
                    //                        textFields?[27].text = momsMomsMomA
                    //                    }
                    //
                    //                    // Mom's Mom's Dad
                    //                    if let momsMomsDadE = result.value(forKey: "momsMomsDadEyesC") as? String {
                    //                        textFields?[28].text = momsMomsDadE
                    //                    }
                    //
                    //                    if let momsMomsDadS = result.value(forKey: "momsMomsDadSkinC") as? String {
                    //                        textFields?[29].text = momsMomsDadS
                    //                    }
                    //
                    //                    if let momsMomsDadH = result.value(forKey: "momsMomsDadHairC") as? String {
                    //                        textFields?[30].text = momsMomsDadH
                    //                    }
                    //
                    //                    if let momsMomsDadA = result.value(forKey: "momsMomsDadAnemiaC") as? String {
                    //                        textFields?[31].text = momsMomsDadA
                    //                    }
                    //
                    //                    // Mom's Dad's Mom
                    //                    if let momsDadsMomE = result.value(forKey: "momsDadsMomEyesC") as? String {
                    //                        textFields?[32].text = momsDadsMomE
                    //                    }
                    //
                    //                    if let momsDadsMomS = result.value(forKey: "momsDadsMomSkinC") as? String {
                    //                        textFields?[33].text = momsDadsMomS
                    //                    }
                    //
                    //                    if let momsDadsMomH = result.value(forKey: "momsDadsMomHairC") as? String {
                    //                        textFields?[34].text = momsDadsMomH
                    //                    }
                    //
                    //                    if let momsDadsMomA = result.value(forKey: "momsDadsMomAnemiaC") as? String {
                    //                        textFields?[35].text = momsDadsMomA
                    //                    }
                    //
                    //                    // Mom's Dad's Dad
                    //                    if let momsDadsDadE = result.value(forKey: "momsDadsDadEyesC") as? String {
                    //                        textFields?[36].text = momsDadsDadE
                    //                    }
                    //
                    //                    if let momsDadsDadS = result.value(forKey: "momsDadsDadSkinC") as? String {
                    //                        textFields?[37].text = momsDadsDadS
                    //                    }
                    //
                    //                    if let momsDadsDadH = result.value(forKey: "momsDadsDadHairC") as? String {
                    //                        textFields?[38].text = momsDadsDadH
                    //                    }
                    //
                    //                    if let momsDadsDadA = result.value(forKey: "momsDadsDadAnemiaC") as? String {
                    //                        textFields?[39].text = momsDadsDadA
                    //                    }
                    //
                    //                    // Dads Moms Mom
                    //                    if let dadsMomsMomE = result.value(forKey: "dadsMomsMomEyesC") as? String {
                    //                        textFields?[40].text = dadsMomsMomE
                    //                    }
                    //
                    //                    if let dadsMomsMomS = result.value(forKey: "dadsMomsMomSkinC") as? String {
                    //                        textFields?[41].text = dadsMomsMomS
                    //                    }
                    //
                    //                    if let dadsMomsMomH = result.value(forKey: "dadsMomsMomHairC") as? String {
                    //                        textFields?[42].text = dadsMomsMomH
                    //                    }
                    //
                    //                    if let dadsMomsMomA = result.value(forKey: "dadsMomsMomAnemiaC") as? String {
                    //                        textFields?[43].text = dadsMomsMomA
                    //                    }
                    //
                    //                    // Dads Moms Dad
                    //                    if let dadsMomsDadE = result.value(forKey: "dadsMomsDadEyesC") as? String {
                    //                        textFields?[44].text = dadsMomsDadE
                    //                    }
                    //
                    //                    if let dadsMomsDadS = result.value(forKey: "dadsMomsDadSkinC") as? String {
                    //                        textFields?[45].text = dadsMomsDadS
                    //                    }
                    //
                    //                    if let dadsMomsDadH = result.value(forKey: "dadsMomsDadHairC") as? String {
                    //                        textFields?[46].text = dadsMomsDadH
                    //                    }
                    //
                    //                    if let dadsMomsDadA = result.value(forKey: "dadsMomsDadAnemiaC") as? String {
                    //                        textFields?[47].text = dadsMomsDadA
                    //                    }
                    //
                    //                    // Dads Dads Mom
                    //                    if let dadsDadsMomE = result.value(forKey: "dadsDadsMomEyesC") as? String {
                    //                        textFields?[48].text = dadsDadsMomE
                    //                    }
                    //
                    //                    if let dadsDadsMomS = result.value(forKey: "dadsDadsMomSkinC") as? String {
                    //                        textFields?[49].text = dadsDadsMomS
                    //                    }
                    //
                    //                    if let dadsDadsMomH = result.value(forKey: "dadsDadsMomHairC") as? String {
                    //                        textFields?[50].text = dadsDadsMomH
                    //                    }
                    //
                    //                    if let dadsDadsMomA = result.value(forKey: "dadsDadsMomAnemiaC") as? String {
                    //                        textFields?[51].text = dadsDadsMomA
                    //                    }
                    //
                    //                    // Dads Dads Dad
                    //                    if let dadsDadsDadE = result.value(forKey: "dadsDadsDadEyesC") as? String {
                    //                        textFields?[52].text = dadsDadsDadE
                    //                    }
                    //
                    //                    if let dadsDadsDadS = result.value(forKey: "dadsDadsDadSkinC") as? String {
                    //                        textFields?[53].text = dadsDadsDadS
                    //                    }
                    //
                    //                    if let dadsDadsDadH = result.value(forKey: "dadsDadsDadHairC") as? String {
                    //                        textFields?[54].text = dadsDadsDadH
                    //                    }
                    //
                    //                    if let dadsDadsDadA = result.value(forKey: "dadsDadsDadAnemiaC") as? String {
                    //                        textFields?[55].text = dadsDadsDadA
                    //                    }
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
        textFields1.inputAccessoryView = toolBar
        textFields2.inputAccessoryView = toolBar
        textFields3.inputAccessoryView = toolBar
        textFields4.inputAccessoryView = toolBar
        textFields5.inputAccessoryView = toolBar
        textFields6.inputAccessoryView = toolBar
        textFields7.inputAccessoryView = toolBar
        textFields8.inputAccessoryView = toolBar
        textFields9.inputAccessoryView = toolBar
        textFields10.inputAccessoryView = toolBar
        textFields11.inputAccessoryView = toolBar
        textFields12.inputAccessoryView = toolBar
        textFields13.inputAccessoryView = toolBar
        textFields14.inputAccessoryView = toolBar
        textFields15.inputAccessoryView = toolBar
        textFields16.inputAccessoryView = toolBar
        textFields17.inputAccessoryView = toolBar
        textFields18.inputAccessoryView = toolBar
        textFields19.inputAccessoryView = toolBar
        textFields20.inputAccessoryView = toolBar
        textFields21.inputAccessoryView = toolBar
        textFields22.inputAccessoryView = toolBar
        textFields23.inputAccessoryView = toolBar
        textFields24.inputAccessoryView = toolBar
        textFields25.inputAccessoryView = toolBar
        textFields26.inputAccessoryView = toolBar
        textFields27.inputAccessoryView = toolBar
        textFields28.inputAccessoryView = toolBar
        textFields29.inputAccessoryView = toolBar
        textFields30.inputAccessoryView = toolBar
        textFields31.inputAccessoryView = toolBar
        textFields32.inputAccessoryView = toolBar
        textFields33.inputAccessoryView = toolBar
        textFields34.inputAccessoryView = toolBar
        textFields35.inputAccessoryView = toolBar
        textFields36.inputAccessoryView = toolBar
        textFields37.inputAccessoryView = toolBar
        textFields38.inputAccessoryView = toolBar
        textFields39.inputAccessoryView = toolBar
        textFields40.inputAccessoryView = toolBar
        textFields41.inputAccessoryView = toolBar
        textFields42.inputAccessoryView = toolBar
        textFields43.inputAccessoryView = toolBar
        textFields44.inputAccessoryView = toolBar
        textFields45.inputAccessoryView = toolBar
        textFields46.inputAccessoryView = toolBar
        textFields47.inputAccessoryView = toolBar
        textFields48.inputAccessoryView = toolBar
        textFields49.inputAccessoryView = toolBar
        textFields50.inputAccessoryView = toolBar
        textFields51.inputAccessoryView = toolBar
        textFields52.inputAccessoryView = toolBar
        textFields53.inputAccessoryView = toolBar
        textFields54.inputAccessoryView = toolBar
        textFields55.inputAccessoryView = toolBar
        textFields56.inputAccessoryView = toolBar
        
        //        textFields?[0].inputAccessoryView = toolBar
        //        textFields?[1].inputAccessoryView = toolBar
        //        textFields?[2].inputAccessoryView = toolBar
        //        textFields?[3].inputAccessoryView = toolBar
        //        textFields?[4].inputAccessoryView = toolBar
        //        textFields?[5].inputAccessoryView = toolBar
        //        textFields?[6].inputAccessoryView = toolBar
        //        textFields?[7].inputAccessoryView = toolBar
        //        textFields?[8].inputAccessoryView = toolBar
        //        textFields?[9].inputAccessoryView = toolBar
        //        textFields?[10].inputAccessoryView = toolBar
        //        textFields?[11].inputAccessoryView = toolBar
        //        textFields?[12].inputAccessoryView = toolBar
        //        textFields?[13].inputAccessoryView = toolBar
        //        textFields?[14].inputAccessoryView = toolBar
        //        textFields?[15].inputAccessoryView = toolBar
        //        textFields?[16].inputAccessoryView = toolBar
        //        textFields?[17].inputAccessoryView = toolBar
        //        textFields?[18].inputAccessoryView = toolBar
        //        textFields?[19].inputAccessoryView = toolBar
        //        textFields?[20].inputAccessoryView = toolBar
        //        textFields?[21].inputAccessoryView = toolBar
        //        textFields?[22].inputAccessoryView = toolBar
        //        textFields?[23].inputAccessoryView = toolBar
        //        textFields?[24].inputAccessoryView = toolBar
        //        textFields?[25].inputAccessoryView = toolBar
        //        textFields?[26].inputAccessoryView = toolBar
        //        textFields?[27].inputAccessoryView = toolBar
        //        textFields?[28].inputAccessoryView = toolBar
        //        textFields?[29].inputAccessoryView = toolBar
        //        textFields?[30].inputAccessoryView = toolBar
        //        textFields?[31].inputAccessoryView = toolBar
        //        textFields?[32].inputAccessoryView = toolBar
        //        textFields?[33].inputAccessoryView = toolBar
        //        textFields?[34].inputAccessoryView = toolBar
        //        textFields?[35].inputAccessoryView = toolBar
        //        textFields?[36].inputAccessoryView = toolBar
        //        textFields?[37].inputAccessoryView = toolBar
        //        textFields?[38].inputAccessoryView = toolBar
        //        textFields?[39].inputAccessoryView = toolBar
        //        textFields?[40].inputAccessoryView = toolBar
        //        textFields?[41].inputAccessoryView = toolBar
        //        textFields?[42].inputAccessoryView = toolBar
        //        textFields?[43].inputAccessoryView = toolBar
        //        textFields?[44].inputAccessoryView = toolBar
        //        textFields?[45].inputAccessoryView = toolBar
        //        textFields?[46].inputAccessoryView = toolBar
        //        textFields?[47].inputAccessoryView = toolBar
        //        textFields?[48].inputAccessoryView = toolBar
        //        textFields?[49].inputAccessoryView = toolBar
        //        textFields?[50].inputAccessoryView = toolBar
        //        textFields?[51].inputAccessoryView = toolBar
        //        textFields?[52].inputAccessoryView = toolBar
        //        textFields?[53].inputAccessoryView = toolBar
        //        textFields?[54].inputAccessoryView = toolBar
        //        textFields?[55].inputAccessoryView = toolBar
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "toInputVC" {
            let destnationVC = segue.destination as! InputVC
            destnationVC.name = nameText
            destnationVC.secondEyesTexts = eyesTexts
            destnationVC.secondSkinTexts = skinTexts
            destnationVC.secondHairTexts = hairTexts
            destnationVC.secondAnemiaTexts = anemiaTexts
        }
        
        if segue.identifier == "scToContainerVC" {
            let destinationVC = segue.destination as? ContainerVC
//            destinationVC?.textField = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
//            destinationVC?.textField1 = textFields1
        }
    }
    
    @IBAction func calculateButton(_ sender: UIBarButtonItem) {
        nameText = nameTextField.text!
//        eyesTexts = [textField1.text, textField1.text, textField2.text, textField3.text, textField4.text, textField5.text, textField6.text, textField7.text, textField8.text, textField9.text, textField10.text, textField1.text, textField1.text, textField1.text] as! [String]
//        skinTexts = [textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text] as! [String]
//        hairTexts = [textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text] as! [String]
//        anemiaTexts = [textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text, textField1.text] as! [String]
        
        //        eyesTexts = [textFields[0].text, textFields[4].text, textFields[8].text, textFields[12].text, textFields[16].text, textFields[20].text, textFields[24].text, textFields[28].text, textFields[32].text, textFields[36].text, textFields[40].text, textFields[44].text, textFields[48].text, textFields[52].text] as! [String]
        //        skinTexts = [textFields[1].text, textFields[5].text, textFields[9].text, textFields[13].text, textFields[17].text, textFields[21].text, textFields[25].text, textFields[29].text, textFields[33].text, textFields[37].text, textFields[41].text, textFields[45].text, textFields[49].text, textFields[53].text] as! [String]
        //        hairTexts = [textFields[2].text, textFields[6].text, textFields[10].text, textFields[14].text, textFields[18].text, textFields[22].text, textFields[26].text, textFields[30].text, textFields[34].text, textFields[38].text, textFields[42].text, textFields[46].text, textFields[50].text, textFields[54].text] as! [String]
        //        anemiaTexts = [textFields[3].text, textFields[7].text, textFields[11].text, textFields[15].text, textFields[19].text, textFields[23].text, textFields[27].text, textFields[31].text, textFields[35].text, textFields[39].text, textFields[43].text, textFields[47].text, textFields[51].text, textFields[55].text] as! [String]
        
//        eyesTexts[0] = textField1.text ?? "d"
//        skinTexts[0] = textField2.text ?? "d"
//        hairTexts[0] = textField3.text ?? "d"
//        anemiaTexts[0] = textField4.text ?? "d"
//        eyesTexts[1] = textField5.text ?? "d"
//        skinTexts[1] = textField6.text ?? "d"
//        hairTexts[1] = textField7.text ?? "d"
//        anemiaTexts[1] = textField8.text ?? "d"
//        eyesTexts[2] = textField9.text ?? "d"
//        skinTexts[2] = textField10.text ?? "d"
//        hairTexts[2] = textField11.text ?? "d"
//        anemiaTexts[2] = textField12.text ?? "d"
//        eyesTexts[3] = textField13.text ?? "d"
//        skinTexts[3] = textField14.text ?? "d"
//        hairTexts[3] = textField15.text ?? "d"
//        anemiaTexts[3] = textField16.text ?? "d"
//        eyesTexts[4] = textField17.text ?? "d"
//        skinTexts[4] = textField18.text ?? "d"
//        hairTexts[4] = textField19.text ?? "d"
//        anemiaTexts[4] = textField20.text ?? "d"
//        eyesTexts[5] = textField21.text ?? "d"
//        skinTexts[5] = textField22.text ?? "d"
//        hairTexts[5] = textField23.text ?? "d"
//        anemiaTexts[5] = textField24.text ?? "d"
//        eyesTexts[6] = textField25.text ?? "d"
//        skinTexts[6] = textField26.text ?? "d"
//        hairTexts[6] = textField27.text ?? "d"
//        anemiaTexts[6] = textField28.text ?? "d"
//        eyesTexts[7] = textField29.text ?? "d"
//        skinTexts[7] = textField30.text ?? "d"
//        hairTexts[7] = textField31.text ?? "d"
//        anemiaTexts[7] = textField32.text ?? "d"
//        eyesTexts[8] = textField33.text ?? "d"
//        skinTexts[8] = textField34.text ?? "d"
//        hairTexts[8] = textField35.text ?? "d"
//        anemiaTexts[8] = textField36.text ?? "d"
//        eyesTexts[9] = textField37.text ?? "d"
//        skinTexts[9] = textField38.text ?? "d"
//        hairTexts[9] = textField39.text ?? "d"
//        anemiaTexts[9] = textField40.text ?? "d"
//        eyesTexts[10] = textField41.text ?? "d"
//        skinTexts[10] = textField42.text ?? "d"
//        hairTexts[10] = textField43.text ?? "d"
//        anemiaTexts[10] = textField44.text ?? "d"
//        eyesTexts[11] = textField45.text ?? "d"
//        skinTexts[11] = textField46.text ?? "d"
//        hairTexts[11] = textField47.text ?? "d"
//        anemiaTexts[11] = textField48.text ?? "d"
//        eyesTexts[12] = textField49.text ?? "d"
//        skinTexts[12] = textField50.text ?? "d"
//        hairTexts[12] = textField51.text ?? "d"
//        anemiaTexts[12] = textField52.text ?? "d"
//        eyesTexts[13] = textField53.text ?? "d"
//        skinTexts[13] = textField54.text ?? "d"
//        hairTexts[13] = textField55.text ?? "d"
//        anemiaTexts[13] = textField56.text ?? "d"
        
        //        eyesTexts[0] = textFields?[0].text ?? ""
        //        skinTexts[0] = textFields?[1].text ?? ""
        //        hairTexts[0] = textFields?[2].text ?? ""
        //        anemiaTexts[0] = textFields?[3].text ?? ""
        //        eyesTexts[1] = textFields?[4].text ?? ""
        //        skinTexts[1] = textFields?[5].text ?? ""
        //        hairTexts[1] = textFields?[6].text ?? ""
        //        anemiaTexts[1] = textFields?[7].text ?? ""
        //        eyesTexts[2] = textFields?[8].text ?? ""
        //        skinTexts[2] = textFields?[9].text ?? ""
        //        hairTexts[2] = textFields?[10].text ?? ""
        //        anemiaTexts[2] = textFields?[11].text ?? ""
        //        eyesTexts[3] = textFields?[12].text ?? ""
        //        skinTexts[3] = textFields?[13].text ?? ""
        //        hairTexts[3] = textFields?[14].text ?? ""
        //        anemiaTexts[3] = textFields?[15].text ?? ""
        //        eyesTexts[4] = textFields?[16].text ?? ""
        //        skinTexts[4] = textFields?[17].text ?? ""
        //        hairTexts[4] = textFields?[18].text ?? ""
        //        anemiaTexts[4] = textFields?[19].text ?? ""
        //        eyesTexts[5] = textFields?[20].text ?? ""
        //        skinTexts[5] = textFields?[21].text ?? ""
        //        hairTexts[5] = textFields?[22].text ?? ""
        //        anemiaTexts[5] = textFields?[23].text ?? ""
        //        eyesTexts[6] = textFields?[24].text ?? ""
        //        skinTexts[6] = textFields?[25].text ?? ""
        //        hairTexts[6] = textFields?[26].text ?? ""
        //        anemiaTexts[6] = textFields?[27].text ?? ""
        //        eyesTexts[7] = textFields?[28].text ?? ""
        //        skinTexts[7] = textFields?[29].text ?? ""
        //        hairTexts[7] = textFields?[30].text ?? ""
        //        anemiaTexts[7] = textFields?[31].text ?? ""
        //        eyesTexts[8] = textFields?[32].text ?? ""
        //        skinTexts[8] = textFields?[33].text ?? ""
        //        hairTexts[8] = textFields?[34].text ?? ""
        //        anemiaTexts[8] = textFields?[35].text ?? ""
        //        eyesTexts[9] = textFields?[36].text ?? ""
        //        skinTexts[9] = textFields?[37].text ?? ""
        //        hairTexts[9] = textFields?[38].text ?? ""
        //        anemiaTexts[9] = textFields?[39].text ?? ""
        //        eyesTexts[10] = textFields?[40].text ?? ""
        //        skinTexts[10] = textFields?[41].text ?? ""
        //        hairTexts[10] = textFields?[42].text ?? ""
        //        anemiaTexts[10] = textFields?[43].text ?? ""
        //        eyesTexts[11] = textFields?[44].text ?? ""
        //        skinTexts[11] = textFields?[45].text ?? ""
        //        hairTexts[11] = textFields?[46].text ?? ""
        //        anemiaTexts[11] = textFields?[47].text ?? ""
        //        eyesTexts[12] = textFields?[48].text ?? ""
        //        skinTexts[12] = textFields?[49].text ?? ""
        //        hairTexts[12] = textFields?[50].text ?? ""
        //        anemiaTexts[12] = textFields?[51].text ?? ""
        //        eyesTexts[13] = textFields?[52].text ?? ""
        //        skinTexts[13] = textFields?[53].text ?? ""
        //        hairTexts[13] = textFields?[54].text ?? ""
        //        anemiaTexts[13] = textFields?[55].text ?? ""
        
//        if nameText == "" || eyesTexts[0] == "" || eyesTexts[1] == "" || eyesTexts[2] == "" || eyesTexts[3] == "" || eyesTexts[4] == "" || eyesTexts[5] == "" || eyesTexts[6] == "" || eyesTexts[7] == "" || eyesTexts[8] == "" || eyesTexts[9] == "" || eyesTexts[10] == "" || eyesTexts[11] == "" || eyesTexts[12] == "" || eyesTexts[13] == "" || skinTexts[0] == "" || skinTexts[1] == "" || skinTexts[2] == "" || skinTexts[3] == "" || skinTexts[4] == "" || skinTexts[5] == "" || skinTexts[6] == "" || skinTexts[7] == "" || skinTexts[8] == "" || skinTexts[9] == "" || skinTexts[10] == "" || skinTexts[11] == "" || skinTexts[12] == "" || skinTexts[13] == "" || hairTexts[0] == "" || hairTexts[1] == "" || hairTexts[2] == "" || hairTexts[3] == "" || hairTexts[4] == "" || hairTexts[5] == "" || hairTexts[6] == "" || hairTexts[7] == "" || hairTexts[8] == "" || hairTexts[9] == "" || hairTexts[10] == "" || hairTexts[11] == "" || hairTexts[12] == "" || hairTexts[13] == "" || anemiaTexts[0] == "" || anemiaTexts[1] == "" || anemiaTexts[2] == "" || anemiaTexts[3] == "" || anemiaTexts[4] == "" || anemiaTexts[5] == "" || anemiaTexts[6] == "" || anemiaTexts[7] == "" || anemiaTexts[8] == "" || anemiaTexts[9] == "" || anemiaTexts[10] == "" || anemiaTexts[11] == "" || anemiaTexts[12] == "" || anemiaTexts[13] == "" {
//            
//            let alert = UIAlertController(title: "Alert", message: "You have to complete all options", preferredStyle: UIAlertController.Style.alert)
//            let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
//            alert.addAction(okButoon)
//            self.present(alert, animated: true, completion: nil)
//        } else {
            performSegue(withIdentifier: "toInputVC", sender: nil)
//        }
    }
    
    @IBAction func tryButton(_ sender: UIBarButtonItem) {
        textFields1.text = "Black"
        textFields2.text = "Black"
        textFields3.text = "Black"
        textFields4.text = "Diseased"
        textFields5.text = "Black"
        textFields6.text = "Black"
        textFields7.text = "Black"
        textFields8.text = "Diseased"
        textFields9.text = "Black"
        textFields10.text = "Black"
        textFields11.text = "Black"
        textFields12.text = "Diseased"
        textFields13.text = "Black"
        textFields14.text = "Black"
        textFields15.text = "Black"
        textFields16.text = "Diseased"
        textFields17.text = "Black"
        textFields18.text = "Black"
        textFields19.text = "Black"
        textFields20.text = "Diseased"
        textFields21.text = "Black"
        textFields22.text = "Black"
        textFields23.text = "Black"
        textFields24.text = "Diseased"
        textFields25.text = "Black"
        textFields26.text = "Black"
        textFields27.text = "Black"
        textFields28.text = "Diseased"
        textFields29.text = "Black"
        textFields30.text = "Black"
        textFields31.text = "Black"
        textFields32.text = "Diseased"
        textFields33.text = "Black"
        textFields34.text = "Black"
        textFields35.text = "Black"
        textFields36.text = "Diseased"
        textFields37.text = "Black"
        textFields38.text = "Black"
        textFields39.text = "Black"
        textFields40.text = "Diseased"
        textFields41.text = "Black"
        textFields42.text = "Black"
        textFields43.text = "Black"
        textFields44.text = "Diseased"
        textFields45.text = "Black"
        textFields46.text = "Black"
        textFields47.text = "Black"
        textFields48.text = "Diseased"
        textFields49.text = "Black"
        textFields50.text = "Black"
        textFields51.text = "Black"
        textFields52.text = "Diseased"
        textFields53.text = "Black"
        textFields54.text = "Black"
        textFields55.text = "Black"
        textFields56.text = "Diseased"
        
        //        textFields![0].text = "Black"
        //        textFields![1].text = "Black"
        //        textFields![2].text = "Black"
        //        textFields![3].text = "Diseased"
        //        textFields![4].text = "Black"
        //        textFields![5].text = "Black"
        //        textFields![6].text = "Black"
        //        textFields![7].text = "Diseased"
        //        textFields![8].text = "Black"
        //        textFields![9].text = "Black"
        //        textFields![10].text = "Black"
        //        textFields![11].text = "Diseased"
        //        textFields![12].text = "Black"
        //        textFields![13].text = "Black"
        //        textFields![14].text = "Black"
        //        textFields![15].text = "Diseased"
        //        textFields![16].text = "Black"
        //        textFields![17].text = "Black"
        //        textFields![18].text = "Black"
        //        textFields![19].text = "Diseased"
        //        textFields![20].text = "Black"
        //        textFields![21].text = "Black"
        //        textFields![22].text = "Black"
        //        textFields![23].text = "Diseased"
        //        textFields![24].text = "Black"
        //        textFields![25].text = "Black"
        //        textFields![26].text = "Black"
        //        textFields![27].text = "Diseased"
        //        textFields![28].text = "Black"
        //        textFields![29].text = "Black"
        //        textFields![30].text = "Black"
        //        textFields![31].text = "Diseased"
        //        textFields![32].text = "Black"
        //        textFields![33].text = "Black"
        //        textFields![34].text = "Black"
        //        textFields![35].text = "Diseased"
        //        textFields![36].text = "Black"
        //        textFields![37].text = "Black"
        //        textFields![38].text = "Black"
        //        textFields![39].text = "Diseased"
        //        textFields![40].text = "Black"
        //        textFields![41].text = "Black"
        //        textFields![42].text = "Black"
        //        textFields![43].text = "Diseased"
        //        textFields![44].text = "Black"
        //        textFields![45].text = "Black"
        //        textFields![46].text = "Black"
        //        textFields![47].text = "Diseased"
        //        textFields![48].text = "Black"
        //        textFields![49].text = "Black"
        //        textFields![50].text = "Black"
        //        textFields![51].text = "Diseased"
        //        textFields![52].text = "Black"
        //        textFields![53].text = "Black"
        //        textFields![54].text = "Black"
        //        textFields![55].text = "Diseased"
    }
}
