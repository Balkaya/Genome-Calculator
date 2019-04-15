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
        textField1?.inputView = firstPicker
        textField2?.inputView = secondPicker
        textField3?.inputView = thirdPicker
        textField4?.inputView = fourthPicker
        textField5?.inputView = fifthPicker
        textField6?.inputView = sixthPicker
        textField7?.inputView = seventhPicker
        textField8?.inputView = eighthPicker
        textField9?.inputView = ninthPicker
        textField10?.inputView = tenthPicker
        textField11?.inputView = eleventhPicker
        textField12?.inputView = twelfthPicker
        textField13?.inputView = thirteenthPicker
        textField14?.inputView = fourteenthPicker
        textField15?.inputView = fifteenthPicker
        textField16?.inputView = sixteenthPicker
        textField17?.inputView = seventeenthPicker
        textField18?.inputView = eighteenthPicker
        textField19?.inputView = ninteenthPicker
        textField20?.inputView = twentiethPicker
        textField21?.inputView = twentyFirstPicker
        textField22?.inputView = twentySecondPicker
        textField23?.inputView = twentyThirthPicker
        textField24?.inputView = twentyFourthPicker
        textField25?.inputView = twentyFifthPicker
        textField26?.inputView = twentySixthPicker
        textField27?.inputView = twentySeventhPicker
        textField28?.inputView = twentyEighthPicker
        textField29?.inputView = twentyNinthPicker
        textField30?.inputView = thirtiethPicker
        textField31?.inputView = thirtyFirstPicker
        textField32?.inputView = thirtySecondPicker
        textField33?.inputView = thirtyThirdPicker
        textField34?.inputView = thirtyFourthPicker
        textField35?.inputView = thirtyFifthPicker
        textField36?.inputView = thirtySixthPicker
        textField37?.inputView = thirtySeventhPicker
        textField38?.inputView = thirtyEighthPicker
        textField39?.inputView = thirtyNinthPicker
        textField40?.inputView = fortiethPicker
        textField41?.inputView = fourtyFirstPicker
        textField42?.inputView = fourtySecondPicker
        textField43?.inputView = fourtyThirdPicker
        textField44?.inputView = fourtyFourthPicker
        textField45?.inputView = fourtyFifthPicker
        textField46?.inputView = fourtySixthPicker
        textField47?.inputView = fourtySeventhPicker
        textField48?.inputView = fourtyEighthPicker
        textField49?.inputView = fourtyNinthPicker
        textField50?.inputView = fiftiethPicker
        textField51?.inputView = fiftyFirstPicker
        textField52?.inputView = fiftySecondPicker
        textField53?.inputView = fiftyThirdPicker
        textField54?.inputView = fiftyFourthPicker
        textField55?.inputView = fiftyFifthPicker
        textField56?.inputView = fiftySixthPicker
        
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
            textField1.text = eyesColors[row]
        } else if pickerView == secondPicker {
            textField2.text = skinColors[row]
        } else if pickerView == thirdPicker {
            textField3.text = hairColors[row]
        } else if pickerView == fourthPicker {
            textField4.text = anemiaCases[row]
        } else if pickerView == fifthPicker {
            textField5.text = eyesColors[row]
        } else if pickerView == sixthPicker {
            textField6.text = skinColors[row]
        } else if pickerView == seventhPicker {
            textField7.text = hairColors[row]
        } else if pickerView == eighthPicker {
            textField8.text = anemiaCases[row]
        } else if pickerView == ninthPicker {
            textField9.text = eyesColors[row]
        } else if pickerView == tenthPicker {
            textField10.text = skinColors[row]
        } else if pickerView == eleventhPicker {
            textField11.text = hairColors[row]
        } else if pickerView == twentiethPicker {
            textField12.text = anemiaCases[row]
        } else if pickerView == thirteenthPicker {
            textField13.text = eyesColors[row]
        } else if pickerView == fourteenthPicker {
            textField14.text = skinColors[row]
        } else if pickerView == fifteenthPicker {
            textField15.text = hairColors[row]
        } else if pickerView == sixteenthPicker {
            textField16.text = anemiaCases[row]
        } else if pickerView == seventhPicker {
            textField17.text = eyesColors[row]
        } else if pickerView == eighteenthPicker {
            textField18.text = skinColors[row]
        } else if pickerView == ninteenthPicker {
            textField19.text = hairColors[row]
        } else if pickerView == twentiethPicker {
            textField20.text = anemiaCases[row]
        } else if pickerView == twentyFirstPicker {
            textField21.text = eyesColors[row]
        } else if pickerView == twentySecondPicker {
            textField22.text = skinColors[row]
        } else if pickerView == twentyThirthPicker {
            textField23.text = hairColors[row]
        } else if pickerView == twentyFourthPicker {
            textField24.text = anemiaCases[row]
        } else if pickerView == twentyFifthPicker {
            textField25.text = eyesColors[row]
        } else if pickerView == twentySixthPicker {
            textField26.text = skinColors[row]
        } else if pickerView == twentySeventhPicker {
            textField27.text = hairColors[row]
        } else if pickerView == twentyEighthPicker {
            textField28.text = anemiaCases[row]
        } else if pickerView == twentyNinthPicker {
            textField29.text = eyesColors[row]
        } else if pickerView == thirtiethPicker {
            textField30.text = skinColors[row]
        } else if pickerView == thirtyFirstPicker {
            textField31.text = hairColors[row]
        } else if pickerView == thirtySecondPicker {
            textField32.text = anemiaCases[row]
        } else if pickerView == thirtyThirdPicker {
            textField33.text = eyesColors[row]
        } else if pickerView == thirtyFourthPicker {
            textField34.text = skinColors[row]
        } else if pickerView == thirtyFifthPicker {
            textField35.text = hairColors[row]
        } else if pickerView == thirtySixthPicker {
            textField36.text = anemiaCases[row]
        } else if pickerView == thirtySeventhPicker {
            textField37.text = eyesColors[row]
        } else if pickerView == thirtyEighthPicker {
            textField38.text = skinColors[row]
        } else if pickerView == thirtyNinthPicker {
            textField39.text = hairColors[row]
        } else if pickerView == fortiethPicker {
            textField40.text = anemiaCases[row]
        } else if pickerView == fourtyFirstPicker {
            textField41.text = eyesColors[row]
        } else if pickerView == fourtySecondPicker {
            textField42.text = skinColors[row]
        } else if pickerView == fourtyThirdPicker {
            textField43.text = hairColors[row]
        } else if pickerView == fourtyFourthPicker {
            textField44.text = anemiaCases[row]
        } else if pickerView == fourtyFifthPicker {
            textField45.text = eyesColors[row]
        } else if pickerView == fourtySixthPicker {
            textField46.text = skinColors[row]
        } else if pickerView == fourtySeventhPicker {
            textField47.text = hairColors[row]
        } else if pickerView == fourtyEighthPicker {
            textField48.text = anemiaCases[row]
        } else if pickerView == fourtyNinthPicker {
            textField49.text = eyesColors[row]
        } else if pickerView == fiftiethPicker {
            textField50.text = skinColors[row]
        } else if pickerView == fiftyFirstPicker {
            textField51.text = hairColors[row]
        } else if pickerView == fiftySecondPicker {
            textField52.text = anemiaCases[row]
        } else if pickerView == fiftyThirdPicker {
            textField53.text = eyesColors[row]
        } else if pickerView == fiftyFourthPicker {
            textField54.text = skinColors[row]
        } else if pickerView == fiftyFifthPicker {
            textField55.text = hairColors[row]
        } else if pickerView == fiftySixthPicker {
            textField56.text = anemiaCases[row]
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
                        textField1.text = momE
                    }
                    
                    if let momS = result.value(forKey: "momSkinC") as? String {
                        textField2.text = momS
                    }
                    
                    if let momH = result.value(forKey: "momHairC") as? String {
                        textField3.text = momH
                    }
                    
                    if let momA = result.value(forKey: "momAnemiaC") as? String {
                        textField4.text = momA
                    }
                    
                    // Dad
                    if let dadE = result.value(forKey: "dadEyesC") as? String {
                        textField5.text = dadE
                    }
                    
                    if let dadS = result.value(forKey: "dadSkinC") as? String {
                        textField6.text = dadS
                    }
                    
                    if let dadH = result.value(forKey: "dadHairC") as? String {
                        textField7.text = dadH
                    }
                    
                    if let dadA = result.value(forKey: "dadAnemiaC") as? String {
                        textField8.text = dadA
                    }
                    
                    // Mom's Mom
                    if let momsMomE = result.value(forKey: "momsMomEyesC") as? String {
                        textField9.text = momsMomE
                    }
                    
                    if let momsMomS = result.value(forKey: "momsMomSkinC") as? String {
                        textField10.text = momsMomS
                    }
                    
                    if let momsMomH = result.value(forKey: "momsMomHairC") as? String {
                        textField11.text = momsMomH
                    }
                    
                    if let momsMomA = result.value(forKey: "momsMomAnemiaC") as? String {
                        textField12.text = momsMomA
                    }
                    
                    // Mom's Dad
                    if let momsDadE = result.value(forKey: "momsDadEyesC") as? String {
                        textField13.text = momsDadE
                    }
                    
                    if let momsDadS = result.value(forKey: "momsDadSkinC") as? String {
                        textField14.text = momsDadS
                    }
                    
                    if let momsDadH = result.value(forKey: "momsDadHairC") as? String {
                        textField15.text = momsDadH
                    }
                    
                    if let momsDadA = result.value(forKey: "momsDadAnemiaC") as? String {
                        textField16.text = momsDadA
                    }
                    
                    // Dad's Mom
                    if let dadsMomE = result.value(forKey: "dadsMomEyesC") as? String {
                        textField17.text = dadsMomE
                    }
                    
                    if let dadsMomS = result.value(forKey: "dadsMomSkinC") as? String {
                        textField18.text = dadsMomS
                    }
                    
                    if let dadsMomH = result.value(forKey: "dadsMomHairC") as? String {
                        textField19.text = dadsMomH
                    }
                    
                    if let dadsMomA = result.value(forKey: "dadsMomAnemiaC") as? String {
                        textField20.text = dadsMomA
                    }
                    
                    // Dad's Dad
                    if let dadsDadE = result.value(forKey: "dadsDadEyesC") as? String {
                        textField21.text = dadsDadE
                    }
                    
                    if let dadsDadS = result.value(forKey: "dadsDadSkinC") as? String {
                        textField22.text = dadsDadS
                    }
                    
                    if let dadsDadH = result.value(forKey: "dadsDadHairC") as? String {
                        textField23.text = dadsDadH
                    }
                    
                    if let dadsDadA = result.value(forKey: "dadsDadAnemiaC") as? String {
                        textField24.text = dadsDadA
                    }
                    
                    // Mom's Mom's Mom
                    if let momsMomsMomE = result.value(forKey: "momsMomsMomEyesC") as? String {
                        textField25.text = momsMomsMomE
                    }
                    
                    if let momsMomsMomS = result.value(forKey: "momsMomsMomSkinC") as? String {
                        textField26.text = momsMomsMomS
                    }
                    
                    if let momsMomsMomH = result.value(forKey: "momsMomsMomHairC") as? String {
                        textField27.text = momsMomsMomH
                    }
                    
                    if let momsMomsMomA = result.value(forKey: "momsMomsMomAnemiaC") as? String {
                        textField28.text = momsMomsMomA
                    }
                    
                    // Mom's Mom's Dad
                    if let momsMomsDadE = result.value(forKey: "momsMomsDadEyesC") as? String {
                        textField29.text = momsMomsDadE
                    }
                    
                    if let momsMomsDadS = result.value(forKey: "momsMomsDadSkinC") as? String {
                        textField30.text = momsMomsDadS
                    }
                    
                    if let momsMomsDadH = result.value(forKey: "momsMomsDadHairC") as? String {
                        textField31.text = momsMomsDadH
                    }
                    
                    if let momsMomsDadA = result.value(forKey: "momsMomsDadAnemiaC") as? String {
                        textField32.text = momsMomsDadA
                    }
                    
                    // Mom's Dad's Mom
                    if let momsDadsMomE = result.value(forKey: "momsDadsMomEyesC") as? String {
                        textField33.text = momsDadsMomE
                    }
                    
                    if let momsDadsMomS = result.value(forKey: "momsDadsMomSkinC") as? String {
                        textField34.text = momsDadsMomS
                    }
                    
                    if let momsDadsMomH = result.value(forKey: "momsDadsMomHairC") as? String {
                        textField35.text = momsDadsMomH
                    }
                    
                    if let momsDadsMomA = result.value(forKey: "momsDadsMomAnemiaC") as? String {
                        textField36.text = momsDadsMomA
                    }
                    
                    // Mom's Dad's Dad
                    if let momsDadsDadE = result.value(forKey: "momsDadsDadEyesC") as? String {
                        textField37.text = momsDadsDadE
                    }
                    
                    if let momsDadsDadS = result.value(forKey: "momsDadsDadSkinC") as? String {
                        textField38.text = momsDadsDadS
                    }
                    
                    if let momsDadsDadH = result.value(forKey: "momsDadsDadHairC") as? String {
                        textField39.text = momsDadsDadH
                    }
                    
                    if let momsDadsDadA = result.value(forKey: "momsDadsDadAnemiaC") as? String {
                        textField40.text = momsDadsDadA
                    }
                    
                    // Dads Moms Mom
                    if let dadsMomsMomE = result.value(forKey: "dadsMomsMomEyesC") as? String {
                        textField41.text = dadsMomsMomE
                    }
                    
                    if let dadsMomsMomS = result.value(forKey: "dadsMomsMomSkinC") as? String {
                        textField42.text = dadsMomsMomS
                    }
                    
                    if let dadsMomsMomH = result.value(forKey: "dadsMomsMomHairC") as? String {
                        textField43.text = dadsMomsMomH
                    }
                    
                    if let dadsMomsMomA = result.value(forKey: "dadsMomsMomAnemiaC") as? String {
                        textField44.text = dadsMomsMomA
                    }
                    
                    // Dads Moms Dad
                    if let dadsMomsDadE = result.value(forKey: "dadsMomsDadEyesC") as? String {
                        textField45.text = dadsMomsDadE
                    }
                    
                    if let dadsMomsDadS = result.value(forKey: "dadsMomsDadSkinC") as? String {
                        textField46.text = dadsMomsDadS
                    }
                    
                    if let dadsMomsDadH = result.value(forKey: "dadsMomsDadHairC") as? String {
                        textField47.text = dadsMomsDadH
                    }
                    
                    if let dadsMomsDadA = result.value(forKey: "dadsMomsDadAnemiaC") as? String {
                        textField48.text = dadsMomsDadA
                    }
                    
                    // Dads Dads Mom
                    if let dadsDadsMomE = result.value(forKey: "dadsDadsMomEyesC") as? String {
                        textField49.text = dadsDadsMomE
                    }
                    
                    if let dadsDadsMomS = result.value(forKey: "dadsDadsMomSkinC") as? String {
                        textField50.text = dadsDadsMomS
                    }
                    
                    if let dadsDadsMomH = result.value(forKey: "dadsDadsMomHairC") as? String {
                        textField51.text = dadsDadsMomH
                    }
                    
                    if let dadsDadsMomA = result.value(forKey: "dadsDadsMomAnemiaC") as? String {
                        textField52.text = dadsDadsMomA
                    }
                    
                    // Dads Dads Dad
                    if let dadsDadsDadE = result.value(forKey: "dadsDadsDadEyesC") as? String {
                        textField53.text = dadsDadsDadE
                    }
                    
                    if let dadsDadsDadS = result.value(forKey: "dadsDadsDadSkinC") as? String {
                        textField54.text = dadsDadsDadS
                    }
                    
                    if let dadsDadsDadH = result.value(forKey: "dadsDadsDadHairC") as? String {
                        textField55.text = dadsDadsDadH
                    }
                    
                    if let dadsDadsDadA = result.value(forKey: "dadsDadsDadAnemiaC") as? String {
                        textField56.text = dadsDadsDadA
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
        textField1?.inputAccessoryView = toolBar
        textField2?.inputAccessoryView = toolBar
        textField3?.inputAccessoryView = toolBar
        textField4?.inputAccessoryView = toolBar
        textField5?.inputAccessoryView = toolBar
        textField6?.inputAccessoryView = toolBar
        textField7?.inputAccessoryView = toolBar
        textField8?.inputAccessoryView = toolBar
        textField9?.inputAccessoryView = toolBar
        textField10?.inputAccessoryView = toolBar
        textField11?.inputAccessoryView = toolBar
        textField12?.inputAccessoryView = toolBar
        textField13?.inputAccessoryView = toolBar
        textField14?.inputAccessoryView = toolBar
        textField15?.inputAccessoryView = toolBar
        textField16?.inputAccessoryView = toolBar
        textField17?.inputAccessoryView = toolBar
        textField18?.inputAccessoryView = toolBar
        textField19?.inputAccessoryView = toolBar
        textField20?.inputAccessoryView = toolBar
        textField21?.inputAccessoryView = toolBar
        textField22?.inputAccessoryView = toolBar
        textField23?.inputAccessoryView = toolBar
        textField24?.inputAccessoryView = toolBar
        textField25?.inputAccessoryView = toolBar
        textField26?.inputAccessoryView = toolBar
        textField27?.inputAccessoryView = toolBar
        textField28?.inputAccessoryView = toolBar
        textField29?.inputAccessoryView = toolBar
        textField30?.inputAccessoryView = toolBar
        textField31?.inputAccessoryView = toolBar
        textField32?.inputAccessoryView = toolBar
        textField33?.inputAccessoryView = toolBar
        textField34?.inputAccessoryView = toolBar
        textField35?.inputAccessoryView = toolBar
        textField36?.inputAccessoryView = toolBar
        textField37?.inputAccessoryView = toolBar
        textField38?.inputAccessoryView = toolBar
        textField39?.inputAccessoryView = toolBar
        textField40?.inputAccessoryView = toolBar
        textField41?.inputAccessoryView = toolBar
        textField42?.inputAccessoryView = toolBar
        textField43?.inputAccessoryView = toolBar
        textField44?.inputAccessoryView = toolBar
        textField45?.inputAccessoryView = toolBar
        textField46?.inputAccessoryView = toolBar
        textField47?.inputAccessoryView = toolBar
        textField48?.inputAccessoryView = toolBar
        textField49?.inputAccessoryView = toolBar
        textField50?.inputAccessoryView = toolBar
        textField51?.inputAccessoryView = toolBar
        textField52?.inputAccessoryView = toolBar
        textField53?.inputAccessoryView = toolBar
        textField54?.inputAccessoryView = toolBar
        textField55?.inputAccessoryView = toolBar
        textField56?.inputAccessoryView = toolBar
        
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
        
        if nameText == "" || eyesTexts[0] == "" || eyesTexts[1] == "" || eyesTexts[2] == "" || eyesTexts[3] == "" || eyesTexts[4] == "" || eyesTexts[5] == "" || eyesTexts[6] == "" || eyesTexts[7] == "" || eyesTexts[8] == "" || eyesTexts[9] == "" || eyesTexts[10] == "" || eyesTexts[11] == "" || eyesTexts[12] == "" || eyesTexts[13] == "" || skinTexts[0] == "" || skinTexts[1] == "" || skinTexts[2] == "" || skinTexts[3] == "" || skinTexts[4] == "" || skinTexts[5] == "" || skinTexts[6] == "" || skinTexts[7] == "" || skinTexts[8] == "" || skinTexts[9] == "" || skinTexts[10] == "" || skinTexts[11] == "" || skinTexts[12] == "" || skinTexts[13] == "" || hairTexts[0] == "" || hairTexts[1] == "" || hairTexts[2] == "" || hairTexts[3] == "" || hairTexts[4] == "" || hairTexts[5] == "" || hairTexts[6] == "" || hairTexts[7] == "" || hairTexts[8] == "" || hairTexts[9] == "" || hairTexts[10] == "" || hairTexts[11] == "" || hairTexts[12] == "" || hairTexts[13] == "" || anemiaTexts[0] == "" || anemiaTexts[1] == "" || anemiaTexts[2] == "" || anemiaTexts[3] == "" || anemiaTexts[4] == "" || anemiaTexts[5] == "" || anemiaTexts[6] == "" || anemiaTexts[7] == "" || anemiaTexts[8] == "" || anemiaTexts[9] == "" || anemiaTexts[10] == "" || anemiaTexts[11] == "" || anemiaTexts[12] == "" || anemiaTexts[13] == "" {
            
            let alert = UIAlertController(title: "Alert", message: "You have to complete all options", preferredStyle: UIAlertController.Style.alert)
            let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButoon)
            self.present(alert, animated: true, completion: nil)
        } else {
            performSegue(withIdentifier: "toInputVC", sender: nil)
        }
    }
    
    @IBAction func tryButton(_ sender: UIBarButtonItem) {
        textField1?.text = "Black"
        textField2?.text = "Black"
        textField3?.text = "Black"
        textField4?.text = "Diseased"
        textField5?.text = "Black"
        textField6?.text = "Black"
        textField7?.text = "Black"
        textField8?.text = "Diseased"
        textField9?.text = "Black"
        textField10?.text = "Black"
        textField11?.text = "Black"
        textField12?.text = "Diseased"
        textField13?.text = "Black"
        textField14?.text = "Black"
        textField15?.text = "Black"
        textField16?.text = "Diseased"
        textField17?.text = "Black"
        textField18?.text = "Black"
        textField19?.text = "Black"
        textField20?.text = "Diseased"
        textField21?.text = "Black"
        textField22?.text = "Black"
        textField23?.text = "Black"
        textField24?.text = "Diseased"
        textField25?.text = "Black"
        textField26?.text = "Black"
        textField27?.text = "Black"
        textField28?.text = "Diseased"
        textField29?.text = "Black"
        textField30?.text = "Black"
        textField31?.text = "Black"
        textField32?.text = "Diseased"
        textField33?.text = "Black"
        textField34?.text = "Black"
        textField35?.text = "Black"
        textField36?.text = "Diseased"
        textField37?.text = "Black"
        textField38?.text = "Black"
        textField39?.text = "Black"
        textField40?.text = "Diseased"
        textField41?.text = "Black"
        textField42?.text = "Black"
        textField43?.text = "Black"
        textField44?.text = "Diseased"
        textField45?.text = "Black"
        textField46?.text = "Black"
        textField47?.text = "Black"
        textField48?.text = "Diseased"
        textField49?.text = "Black"
        textField50?.text = "Black"
        textField51?.text = "Black"
        textField52?.text = "Diseased"
        textField53?.text = "Black"
        textField54?.text = "Black"
        textField55?.text = "Black"
        textField56?.text = "Diseased"
        
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
