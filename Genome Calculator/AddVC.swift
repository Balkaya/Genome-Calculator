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
    var chosenGene = ""
    var secondOneOrZero = 0
    
    @IBOutlet weak var nameTextField: UITextField!
    
    // Mom
    @IBOutlet weak var momFirstTextField: UITextField!
    @IBOutlet weak var momSecondTextField: UITextField!
    @IBOutlet weak var momThirdTextField: UITextField!
    
    // Dad
    @IBOutlet weak var dadFirstTextField: UITextField!
    @IBOutlet weak var dadSecondTextField: UITextField!
    @IBOutlet weak var dadThirdTextField: UITextField!
    
    // Mom's Mom
    @IBOutlet weak var momsMomFirstTextField: UITextField!
    @IBOutlet weak var momsMomSecondTextField: UITextField!
    @IBOutlet weak var momsMomThirdTextField: UITextField!
    
    // Mom's Dad
    @IBOutlet weak var momsDadFirstTextField: UITextField!
    @IBOutlet weak var momsDadSecondTextField: UITextField!
    @IBOutlet weak var momsDadThidTextField: UITextField!
    
    // Dad's Mom
    @IBOutlet weak var dadsMomFirstTextField: UITextField!
    @IBOutlet weak var dadsMomSecondTextField: UITextField!
    @IBOutlet weak var dadsMomThirdTextField: UITextField!
    
    // Dad's Dad
    @IBOutlet weak var dadsDadFirstTextField: UITextField!
    @IBOutlet weak var dadsDadSecondTextField: UITextField!
    @IBOutlet weak var dadsDadThirdTextField: UITextField!
    
    // Mom's Mom's Mom
    @IBOutlet weak var momsMomsMomFirstTextField: UITextField!
    @IBOutlet weak var momsMomsMomSecondTextField: UITextField!
    @IBOutlet weak var momsMomsMomThirdTextField: UITextField!
    
    // Mom's Mom's Dad
    @IBOutlet weak var momsMomsDadFirstTextField: UITextField!
    @IBOutlet weak var momsMomsDadSecondTextField: UITextField!
    @IBOutlet weak var momsMomsDadThirdTextField: UITextField!
    
    // Mom's Dad's Mom
    @IBOutlet weak var momsDadsMomFirstTextField: UITextField!
    @IBOutlet weak var momsDadsMomSecondTextField: UITextField!
    @IBOutlet weak var momsDadsMomThirdTextField: UITextField!
    
    // Mom's Dad's Dad
    @IBOutlet weak var momsDadsDadFirstTextField: UITextField!
    @IBOutlet weak var momsDadsDadSecondTextField: UITextField!
    @IBOutlet weak var momsDadsDadThirdTextField: UITextField!
    
    // Dad's Mom's Mom
    @IBOutlet weak var dadsMomsMomFirstTextField: UITextField!
    @IBOutlet weak var dadsMomsMomSecondTextField: UITextField!
    @IBOutlet weak var dadsMomsMomThirdTextField: UITextField!
    
    // Dad's Mom's Dad
    @IBOutlet weak var dadsMomsDadFirstTextField: UITextField!
    @IBOutlet weak var dadsMomsDadSecondTextField: UITextField!
    @IBOutlet weak var dadsMomsDadThirdTextField: UITextField!
    
    // Dad's Dad's Mom
    @IBOutlet weak var dadsDadsMomFirstTextField: UITextField!
    @IBOutlet weak var dadsDadsMomSecondTextField: UITextField!
    @IBOutlet weak var dadsDadsMomThirdTextField: UITextField!
    
    // Dad's Dad's Dad
    @IBOutlet weak var dadsDadsDadFirstTextField: UITextField!
    @IBOutlet weak var dadsDadsDadSecondTextField: UITextField!
    @IBOutlet weak var dadsDadsDadThirdTextField: UITextField!
    
    var nameText = ""
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
    var textTwentyNinth = ""
    var textThirtieth = ""
    var textThirtyFirst = ""
    var textThirtySecond = ""
    var textThirtyThird = ""
    var textThirtyFourth = ""
    var textThirtyFifth = ""
    var textThirtySixth = ""
    var textThirtySeventh = ""
    var textThirtyEight = ""
    var textThirtyNinth = ""
    var textFortieth = ""
    var textFourtyFirst = ""
    var textFourtySecond = ""
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGenomPicker()
        createToolbar()
        
        if chosenGene != "" {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Genes")
            
            fetchRequest.predicate = NSPredicate(format: "name = %@", self.chosenGene)
            fetchRequest.returnsObjectsAsFaults = false
            
            do {
                
                let results = try context.fetch(fetchRequest)
                
                if results.count > 0 {
                    for result in results as! [NSManagedObject] {
                        if let name = result.value(forKey: "name") as? String {
                            nameTextField.text = name
                        }
                        
                        // Mom
                        if let momH = result.value(forKey: "momHairC") as? String {
                            momThirdTextField.text = momH
                        }
                        
                        if let momS = result.value(forKey: "momSkinC") as? String {
                            momSecondTextField.text = momS
                        }
                        
                        if let momE = result.value(forKey: "momEyesC") as? String {
                            momFirstTextField.text = momE
                        }
                        
                        // Dad
                        if let dadH = result.value(forKey: "dadHairC") as? String {
                            dadThirdTextField.text = dadH
                        }
                        
                        if let dadS = result.value(forKey: "dadSkinC") as? String {
                            dadSecondTextField.text = dadS
                        }
                        
                        if let dadE = result.value(forKey: "dadEyesC") as? String {
                            dadFirstTextField.text = dadE
                        }
                        
                        // Mom's Mom
                        if let momsMomH = result.value(forKey: "momsMomHairC") as? String {
                            momsMomThirdTextField.text = momsMomH
                        }
                        
                        if let momsMomS = result.value(forKey: "momsMomSkinC") as? String {
                            momsMomSecondTextField.text = momsMomS
                        }
                        
                        if let momsMomE = result.value(forKey: "momsMomEyesC") as? String {
                            momFirstTextField.text = momsMomE
                        }
                        
                        // Mom's Dad
                        if let momsDadH = result.value(forKey: "momsDadHairC") as? String {
                            momsDadThidTextField.text = momsDadH
                        }
                        
                        if let momsDadS = result.value(forKey: "momsDadSkinC") as? String {
                            momsDadSecondTextField.text = momsDadS
                        }
                        
                        if let momsDadE = result.value(forKey: "momsDadEyesC") as? String {
                            momsDadFirstTextField.text = momsDadE
                        }
                        
                        // Dad's Mom
                        if let dadsMomH = result.value(forKey: "dadsMomHairC") as? String {
                            dadsMomThirdTextField.text = dadsMomH
                        }
                        
                        if let dadsMomS = result.value(forKey: "dadsMomSkinC") as? String {
                            dadsMomSecondTextField.text = dadsMomS
                        }
                        
                        if let dadsMomE = result.value(forKey: "dadsMomEyesC") as? String {
                            dadsMomFirstTextField.text = dadsMomE
                        }
                        
                        // Mom's Dad
                        if let momsDadH = result.value(forKey: "momsDadHairC") as? String {
                            momsDadThidTextField.text = momsDadH
                        }
                        
                        if let momsDadS = result.value(forKey: "momsDadSkinC") as? String {
                            momsDadSecondTextField.text = momsDadS
                        }
                        
                        if let momsDadE = result.value(forKey: "momsDadEyesC") as? String {
                            momsMomFirstTextField.text = momsDadE
                        }
                        
                        // Dad's Dad
                        if let dadsDadH = result.value(forKey: "dadsDadHairC") as? String {
                            dadsDadThirdTextField.text = dadsDadH
                        }
                        
                        if let dadsDadS = result.value(forKey: "dadsDadSkinC") as? String {
                            dadsDadSecondTextField.text = dadsDadS
                        }
                        
                        if let dadsDadE = result.value(forKey: "dadsDadEyesC") as? String {
                            dadsDadFirstTextField.text = dadsDadE
                        }
                        
                        // Mom's Mom's Mom
                        if let momsMomsMomH = result.value(forKey: "momsMomsMomHairC") as? String {
                            momsMomsMomThirdTextField.text = momsMomsMomH
                        }
                        
                        if let momsMomsMomS = result.value(forKey: "momsMomsMomSkinC") as? String {
                            momsMomsMomSecondTextField.text = momsMomsMomS
                        }
                        
                        if let momsMomsMomE = result.value(forKey: "momsMomsMomEyesC") as? String {
                            momsMomsMomFirstTextField.text = momsMomsMomE
                        }
                        
                        // Mom's Mom's Dad
                        if let momsMomsDadH = result.value(forKey: "momsMomsDadHairC") as? String {
                            momsMomsDadThirdTextField.text = momsMomsDadH
                        }
                        
                        if let momsMomsDadS = result.value(forKey: "momsMomsDadSkinC") as? String {
                            momsMomsDadSecondTextField.text = momsMomsDadS
                        }
                        
                        if let momsMomsDadE = result.value(forKey: "momsMomsDadEyesC") as? String {
                            momsMomsDadFirstTextField.text = momsMomsDadE
                        }
                        
                        // Mom's Dad's Mom
                        if let momsDadsMomH = result.value(forKey: "momsDadsMomHairC") as? String {
                            momsDadsMomThirdTextField.text = momsDadsMomH
                        }
                        
                        if let momsDadsMomS = result.value(forKey: "momsDadsMomSkinC") as? String {
                            momsDadsMomSecondTextField.text = momsDadsMomS
                        }
                        
                        if let momsDadsMomE = result.value(forKey: "momsDadsMomEyesC") as? String {
                            momsDadsMomFirstTextField.text = momsDadsMomE
                        }
                        
                        // Mom's Dad's Dad
                        if let momsDadsDadH = result.value(forKey: "momsDadsDadHairC") as? String {
                            momsDadsDadThirdTextField.text = momsDadsDadH
                        }
                        
                        if let momsDadsDadS = result.value(forKey: "momsDadsDadSkinC") as? String {
                            momsDadsDadSecondTextField.text = momsDadsDadS
                        }
                        
                        if let momsDadsDadE = result.value(forKey: "momsDadsDadEyesC") as? String {
                            momsDadsDadFirstTextField.text = momsDadsDadE
                        }
                        
                        // Dads Moms Mom
                        if let dadsMomsMomH = result.value(forKey: "dadsMomsMomHairC") as? String {
                            dadsMomsMomThirdTextField.text = dadsMomsMomH
                        }
                        
                        if let dadsMomsMomS = result.value(forKey: "dadsMomsMomSkinC") as? String {
                            dadsMomsMomSecondTextField.text = dadsMomsMomS
                        }
                        
                        if let dadsMomsMomE = result.value(forKey: "dadsMomsMomEyesC") as? String {
                            dadsMomsMomFirstTextField.text = dadsMomsMomE
                        }
                        
                        // Dads Moms Dad
                        if let dadsMomsDadH = result.value(forKey: "dadsMomsDadHairC") as? String {
                            dadsMomsDadThirdTextField.text = dadsMomsDadH
                        }
                        
                        if let dadsMomsDadS = result.value(forKey: "dadsMomsDadSkinC") as? String {
                            dadsMomsDadSecondTextField.text = dadsMomsDadS
                        }
                        
                        if let dadsMomsDadE = result.value(forKey: "dadsMomsDadEyesC") as? String {
                            dadsMomsDadFirstTextField.text = dadsMomsDadE
                        }
                        
                        // Dads Dads Mom
                        if let dadsDadsMomH = result.value(forKey: "dadsDadsMomHairC") as? String {
                            dadsDadsMomThirdTextField.text = dadsDadsMomH
                        }
                        
                        if let dadsDadsMomS = result.value(forKey: "dadsDadsMomSkinC") as? String {
                            dadsDadsMomSecondTextField.text = dadsDadsMomS
                        }
                        
                        if let dadsDadsMomE = result.value(forKey: "dadsDadsMomEyesC") as? String {
                            dadsDadsMomFirstTextField.text = dadsDadsMomE
                        }
                        
                        // Dads Dads Dad
                        if let dadsDadsDadH = result.value(forKey: "dadsDadsDadHairC") as? String {
                            dadsDadsDadThirdTextField.text = dadsDadsDadH
                        }
                        
                        if let dadsDadsDadS = result.value(forKey: "dadsDadsDadSkinC") as? String {
                            dadsDadsDadSecondTextField.text = dadsDadsDadS
                        }
                        
                        if let dadsDadsDadE = result.value(forKey: "dadsDadsDadEyesC") as? String {
                            dadsDadsDadFirstTextField.text = dadsDadsDadE
                        }
                    }
                }
            } catch {
                print("error")
            }
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
    }
    
    func createGenomPicker() {
        momFirstTextField.inputView = firstPicker
        momSecondTextField.inputView = secondPicker
        momThirdTextField.inputView = twentyNinthPicker
        dadFirstTextField.inputView = thirdPicker
        dadSecondTextField.inputView = fourthPicker
        dadThirdTextField.inputView = thirtiethPicker
        momsMomFirstTextField.inputView = fifthPicker
        momsMomSecondTextField.inputView = sixthPicker
        momsMomThirdTextField.inputView = thirtyFirstPicker
        momsDadFirstTextField.inputView = seventhPicker
        momsDadSecondTextField.inputView = eighthPicker
        momsDadThidTextField.inputView = thirtySecondPicker
        dadsMomFirstTextField.inputView = ninthPicker
        dadsMomSecondTextField.inputView = tenthPicker
        dadsMomThirdTextField.inputView = thirtyThirdPicker
        dadsDadFirstTextField.inputView = eleventhPicker
        dadsDadSecondTextField.inputView = twelfthPicker
        dadsDadThirdTextField.inputView = thirtyFourthPicker
        momsMomsMomFirstTextField.inputView = thirteenthPicker
        momsMomsMomSecondTextField.inputView = fourteenthPicker
        momsMomsMomThirdTextField.inputView = thirtyFifthPicker
        momsMomsDadFirstTextField.inputView = fifteenthPicker
        momsMomsDadSecondTextField.inputView = sixteenthPicker
        momsMomsDadThirdTextField.inputView = thirtySixthPicker
        momsDadsMomFirstTextField.inputView = seventeenthPicker
        momsDadsMomSecondTextField.inputView = eighteenthPicker
        momsDadsMomThirdTextField.inputView = thirtySeventhPicker
        momsDadsDadFirstTextField.inputView = ninteenthPicker
        momsDadsDadSecondTextField.inputView = twelfthPicker
        momsDadsDadThirdTextField.inputView = thirtyEighthPicker
        dadsMomsMomFirstTextField.inputView = twentyFirstPicker
        dadsMomsMomSecondTextField.inputView = twentySecondPicker
        dadsMomsMomThirdTextField.inputView = thirtyNinthPicker
        dadsMomsDadFirstTextField.inputView = twentyThirthPicker
        dadsMomsDadSecondTextField.inputView = twentyFourthPicker
        dadsMomsDadThirdTextField.inputView = fortiethPicker
        dadsDadsMomFirstTextField.inputView = twentyFifthPicker
        dadsDadsMomSecondTextField.inputView = twentySixthPicker
        dadsDadsMomThirdTextField.inputView = fourtyFirstPicker
        dadsDadsDadFirstTextField.inputView = twentySeventhPicker
        dadsDadsDadSecondTextField.inputView = twentyEighthPicker
        dadsDadsDadThirdTextField.inputView = fourtySecondPicker
        
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
            countrows = eyesColors.count
        } else if pickerView == fourthPicker {
            countrows = skinColors.count
        } else if pickerView == fifthPicker {
            countrows = eyesColors.count
        } else if pickerView == sixthPicker {
            countrows = skinColors.count
        } else if pickerView == seventhPicker {
            countrows = eyesColors.count
        } else if pickerView == eighthPicker {
            countrows = skinColors.count
        } else if pickerView == ninthPicker {
            countrows = eyesColors.count
        } else if pickerView == tenthPicker {
            countrows = skinColors.count
        } else if pickerView == eleventhPicker {
            countrows = eyesColors.count
        } else if pickerView == twelfthPicker {
            countrows = skinColors.count
        } else if pickerView == thirteenthPicker {
            countrows = eyesColors.count
        } else if pickerView == fourteenthPicker {
            countrows = skinColors.count
        } else if pickerView == fifteenthPicker {
            countrows = eyesColors.count
        } else if pickerView == sixteenthPicker {
            countrows = skinColors.count
        } else if pickerView == seventeenthPicker {
            countrows = eyesColors.count
        } else if pickerView == eighteenthPicker {
            countrows = skinColors.count
        } else if pickerView == ninteenthPicker {
            countrows = eyesColors.count
        } else if pickerView == twentiethPicker {
            countrows = skinColors.count
        } else if pickerView == twentyFirstPicker {
            countrows = eyesColors.count
        } else if pickerView == twentySecondPicker {
            countrows = skinColors.count
        } else if pickerView == twentyThirthPicker {
            countrows = eyesColors.count
        } else if pickerView == twentyFourthPicker {
            countrows = skinColors.count
        } else if pickerView == twentyFifthPicker {
            countrows = eyesColors.count
        } else if pickerView == twentySixthPicker {
            countrows = skinColors.count
        } else if pickerView == twentySeventhPicker {
            countrows = eyesColors.count
        } else if pickerView == twentyEighthPicker {
            countrows = skinColors.count
        } else if pickerView == twentyNinthPicker {
            countrows = hairColors.count
        } else if pickerView == thirtiethPicker {
            countrows = hairColors.count
        } else if pickerView == thirtyFirstPicker {
            countrows = hairColors.count
        } else if pickerView == thirtySecondPicker {
            countrows = hairColors.count
        } else if pickerView == thirtyThirdPicker {
            countrows = hairColors.count
        } else if pickerView == thirtyFourthPicker {
            countrows = hairColors.count
        } else if pickerView == thirtyFifthPicker {
            countrows = hairColors.count
        } else if pickerView == thirtySixthPicker {
            countrows = hairColors.count
        } else if pickerView == thirtySeventhPicker {
            countrows = hairColors.count
        } else if pickerView == thirtyEighthPicker {
            countrows = hairColors.count
        } else if pickerView == thirtyNinthPicker {
            countrows = hairColors.count
        } else if pickerView == fortiethPicker {
            countrows = hairColors.count
        } else if pickerView == fourtyFirstPicker {
            countrows = hairColors.count
        } else if pickerView == fourtySecondPicker {
            countrows = hairColors.count
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
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == fourthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == fifthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == sixthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == seventhPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == eighthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == ninthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == tenthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == eleventhPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == twelfthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == thirteenthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == fourteenthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == fifteenthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == sixteenthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == seventeenthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == eighthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == ninteenthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == twentiethPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == twentyFirstPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == twentySecondPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == twentyThirthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == twentyFourthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == twentyFifthPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == twentySixthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == twentySeventhPicker {
            titleRow = eyesColors[row]
            return titleRow
        } else if pickerView == twentyEighthPicker {
            titleRow = skinColors[row]
            return titleRow
        } else if pickerView == twentyNinthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtiethPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtyFirstPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtySecondPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtyThirdPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtyFourthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtyFifthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtySixthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtySeventhPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtyEighthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == thirtyNinthPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == fortiethPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == fourtyFirstPicker {
            titleRow = hairColors[row]
            return titleRow
        } else if pickerView == fourtySecondPicker {
            titleRow = hairColors[row]
            return titleRow
        } else {
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == firstPicker {
            momFirstTextField.text = eyesColors[row]
        } else if pickerView == secondPicker {
            momSecondTextField.text = skinColors[row]
        } else if pickerView == thirdPicker {
            dadFirstTextField.text = eyesColors[row]
        } else if pickerView == fourthPicker {
            dadSecondTextField.text = skinColors[row]
        } else if pickerView == fifthPicker {
            momsMomFirstTextField.text = eyesColors[row]
        } else if pickerView == sixthPicker {
            momsMomSecondTextField.text = skinColors[row]
        } else if pickerView == seventhPicker {
            momsDadFirstTextField.text = eyesColors[row]
        } else if pickerView == eighthPicker {
            momsDadSecondTextField.text = skinColors[row]
        } else if pickerView == ninthPicker {
            dadsMomFirstTextField.text = eyesColors[row]
        } else if pickerView == tenthPicker {
            dadsMomSecondTextField.text = skinColors[row]
        } else if pickerView == eleventhPicker {
            dadsDadFirstTextField.text = eyesColors[row]
        } else if pickerView == twelfthPicker {
            dadsDadSecondTextField.text = skinColors[row]
        } else if pickerView == thirteenthPicker {
            momsMomsMomFirstTextField.text = eyesColors[row]
        } else if pickerView == fourteenthPicker {
            momsMomsMomSecondTextField.text = skinColors[row]
        } else if pickerView == fifteenthPicker {
            momsMomsDadFirstTextField.text = eyesColors[row]
        } else if pickerView == sixteenthPicker {
            momsMomsDadSecondTextField.text = skinColors[row]
        } else if pickerView == seventeenthPicker {
            momsDadsMomFirstTextField.text = eyesColors[row]
        } else if pickerView == eighteenthPicker {
            momsDadsMomSecondTextField.text = skinColors[row]
        } else if pickerView == ninteenthPicker {
            momsDadsDadFirstTextField.text = eyesColors[row]
        } else if pickerView == twentiethPicker {
            momsDadsDadSecondTextField.text = skinColors[row]
        } else if pickerView == twentyFirstPicker {
            dadsMomsMomFirstTextField.text = eyesColors[row]
        } else if pickerView == twentySecondPicker {
            dadsMomsMomSecondTextField.text = skinColors[row]
        } else if pickerView == twentyThirthPicker {
            dadsMomsDadFirstTextField.text = eyesColors[row]
        } else if pickerView == twentyFourthPicker {
            dadsMomsDadSecondTextField.text = skinColors[row]
        } else if pickerView == twentyFifthPicker {
            dadsDadsMomFirstTextField.text = eyesColors[row]
        } else if pickerView == twentySixthPicker {
            dadsDadsMomSecondTextField.text = skinColors[row]
        } else if pickerView == twentySeventhPicker {
            dadsDadsDadFirstTextField.text = eyesColors[row]
        } else if pickerView == twentyEighthPicker {
            dadsDadsDadSecondTextField.text = skinColors[row]
        } else if pickerView == twentyNinthPicker {
            momThirdTextField.text = hairColors[row]
        } else if pickerView == thirtiethPicker {
            dadThirdTextField.text = hairColors[row]
        } else if pickerView == thirtyFirstPicker {
            momsMomThirdTextField.text = hairColors[row]
        } else if pickerView == thirtySecondPicker {
            momsDadThidTextField.text = hairColors[row]
        } else if pickerView == thirtyThirdPicker {
            dadsMomThirdTextField.text = hairColors[row]
        } else if pickerView == thirtyFourthPicker {
            dadsDadThirdTextField.text = hairColors[row]
        } else if pickerView == thirtyFifthPicker {
            momsMomsMomThirdTextField.text = hairColors[row]
        } else if pickerView == thirtySixthPicker {
            momsMomsDadThirdTextField.text = hairColors[row]
        } else if pickerView == thirtySeventhPicker {
            momsDadsMomThirdTextField.text = hairColors[row]
        } else if pickerView == thirtyEighthPicker {
            momsDadsDadThirdTextField.text = hairColors[row]
        } else if pickerView == thirtyNinthPicker {
            dadsMomsDadThirdTextField.text = hairColors[row]
        } else if pickerView == fortiethPicker {
            dadsMomsMomThirdTextField.text = hairColors[row]
        } else if pickerView == fourtyFirstPicker {
            dadsDadsMomThirdTextField.text = hairColors[row]
        } else if pickerView == fourtySecondPicker {
            dadsDadsDadThirdTextField.text = hairColors[row]
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
        momFirstTextField.inputAccessoryView = toolBar
        momSecondTextField.inputAccessoryView = toolBar
        momThirdTextField.inputAccessoryView = toolBar
        dadFirstTextField.inputAccessoryView = toolBar
        dadSecondTextField.inputAccessoryView = toolBar
        dadThirdTextField.inputAccessoryView = toolBar
        momsMomFirstTextField.inputAccessoryView = toolBar
        momsMomSecondTextField.inputAccessoryView = toolBar
        momsMomThirdTextField.inputAccessoryView = toolBar
        momsDadFirstTextField.inputAccessoryView = toolBar
        momsDadSecondTextField.inputAccessoryView = toolBar
        momsDadThidTextField.inputAccessoryView = toolBar
        dadsMomFirstTextField.inputAccessoryView = toolBar
        dadsMomSecondTextField.inputAccessoryView = toolBar
        dadsMomThirdTextField.inputAccessoryView = toolBar
        dadsDadFirstTextField.inputAccessoryView = toolBar
        dadsDadSecondTextField.inputAccessoryView = toolBar
        dadsDadThirdTextField.inputAccessoryView = toolBar
        momsMomsMomFirstTextField.inputAccessoryView = toolBar
        momsMomsMomSecondTextField.inputAccessoryView = toolBar
        momsMomsMomThirdTextField.inputAccessoryView = toolBar
        momsMomsDadFirstTextField.inputAccessoryView = toolBar
        momsMomsDadSecondTextField.inputAccessoryView = toolBar
        momsMomsDadThirdTextField.inputAccessoryView = toolBar
        momsDadsMomFirstTextField.inputAccessoryView = toolBar
        momsDadsMomSecondTextField.inputAccessoryView = toolBar
        momsDadsMomThirdTextField.inputAccessoryView = toolBar
        momsDadsDadFirstTextField.inputAccessoryView = toolBar
        momsDadsDadSecondTextField.inputAccessoryView = toolBar
        momsDadsDadThirdTextField.inputAccessoryView = toolBar
        dadsMomsMomFirstTextField.inputAccessoryView = toolBar
        dadsMomsMomSecondTextField.inputAccessoryView = toolBar
        dadsMomsMomThirdTextField.inputAccessoryView = toolBar
        dadsMomsDadFirstTextField.inputAccessoryView = toolBar
        dadsMomsDadSecondTextField.inputAccessoryView = toolBar
        dadsMomsDadThirdTextField.inputAccessoryView = toolBar
        dadsDadsMomFirstTextField.inputAccessoryView = toolBar
        dadsDadsMomSecondTextField.inputAccessoryView = toolBar
        dadsDadsMomThirdTextField.inputAccessoryView = toolBar
        dadsDadsDadFirstTextField.inputAccessoryView = toolBar
        dadsDadsDadSecondTextField.inputAccessoryView = toolBar
        dadsDadsDadThirdTextField.inputAccessoryView = toolBar
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
            destnationVC.twentyNinthText = textTwentyNinth
            destnationVC.thirtiethText = textThirtieth
            destnationVC.thirtyFirstText = textThirtyFirst
            destnationVC.thirtySecondText = textThirtySecond
            destnationVC.thirtyThirdText = textThirtyThird
            destnationVC.thirtyFourthText = textThirtyFourth
            destnationVC.thirtyFifthText = textThirtyFifth
            destnationVC.thirtySixthText = textThirtySixth
            destnationVC.thirtySeventhText = textThirtySeventh
            destnationVC.thirtyEightText = textThirtyEight
            destnationVC.thirtyNinthText = textThirtyNinth
            destnationVC.fortiethText = textFortieth
            destnationVC.fourtyFirstText = textFourtyFirst
            destnationVC.fourtySecondText = textFourtySecond
        }
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        nameText = nameTextField.text!
        textOne = momFirstTextField.text!
        textTwo = momSecondTextField.text!
        textTwentyNinth = momThirdTextField.text!
        textThree = dadFirstTextField.text!
        textFour = dadSecondTextField.text!
        textThirtieth = dadThirdTextField.text!
        textFive = momsMomFirstTextField.text!
        textSix = momsMomSecondTextField.text!
        textThirtyFirst = momsMomThirdTextField.text!
        textSeven = momsDadFirstTextField.text!
        textEight = momsDadSecondTextField.text!
        textThirtySecond = momsDadThidTextField.text!
        textNine = dadsMomFirstTextField.text!
        textTen = dadsMomSecondTextField.text!
        textThirtyThird = dadsMomThirdTextField.text!
        textEleven = dadsDadFirstTextField.text!
        textTwelve = dadsDadSecondTextField.text!
        textThirtyFourth = dadsDadThirdTextField.text!
        textThirteen = momsMomsMomFirstTextField.text!
        textFourteen = momsMomsMomSecondTextField.text!
        textThirtyFifth = momsMomsMomThirdTextField.text!
        textFifteen = momsMomsDadFirstTextField.text!
        textSixteen = momsMomsDadSecondTextField.text!
        textThirtySixth = momsMomsDadThirdTextField.text!
        textSeventeen = momsDadsMomFirstTextField.text!
        textEighteen = momsDadsMomSecondTextField.text!
        textThirtySeventh = momsDadsMomThirdTextField.text!
        textNinteen = momsDadsDadFirstTextField.text!
        textTwenty = momsDadsDadSecondTextField.text!
        textThirtyEight = momsDadsDadThirdTextField.text!
        textTwentyOne = dadsMomsMomFirstTextField.text!
        textTwentyTwo = dadsMomsMomSecondTextField.text!
        textThirtyNinth = dadsMomsMomThirdTextField.text!
        textTwentyThree = dadsMomsDadFirstTextField.text!
        textTwentyFour = dadsMomsDadSecondTextField.text!
        textFortieth = dadsMomsDadThirdTextField.text!
        textTwentyFive = dadsDadsMomFirstTextField.text!
        textTwentySix = dadsDadsMomSecondTextField.text!
        textFourtyFirst = dadsDadsMomThirdTextField.text!
        textTwentySeven = dadsDadsDadFirstTextField.text!
        textTwentyEight = dadsDadsDadSecondTextField.text!
        textFourtySecond = dadsDadsDadThirdTextField.text!
        
        if nameText == "" || textOne == "" || textTwo == "" || textThree == "" || textFour == "" || textFive == "" || textSix == "" || textSeven == "" || textEight == "" || textNine == "" || textTen == "" || textEleven == "" || textTwelve == "" || textThirteen == "" || textFourteen == "" || textFifteen == "" || textSixteen == "" || textSeventeen == "" || textEighteen == "" || textNinteen == "" || textTwenty == "" || textTwentyOne == "" || textTwentyTwo == "" || textTwentyThree == "" || textTwentyFour == "" || textTwentyFive == "" || textTwentySix == "" || textTwentySeven == "" || textTwentyEight == "" || textTwentyNinth == "" || textThirtieth == "" || textThirtyFirst == "" || textThirtySecond == "" || textThirtyThird == "" || textThirtyFourth == "" || textThirtyFifth == "" || textThirtySixth == "" || textThirtySeventh == "" || textThirtyEight == "" || textThirtyNinth == "" || textFortieth == "" || textFourtyFirst == "" || textFourtySecond == "" {
        
            let alert = UIAlertController(title: "Alert", message: "You have to complete all options", preferredStyle: UIAlertController.Style.alert)
            let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButoon)
            self.present(alert, animated: true, completion: nil)
        } else {
            performSegue(withIdentifier: "toInputVC", sender: nil)
        }
    }
    
    @IBAction func tryButton(_ sender: Any) {
        nameTextField.text = "Can"
        momFirstTextField.text = "Brown"
        momSecondTextField.text = "White"
        momThirdTextField.text = "Yellow"
        dadFirstTextField.text = "Brown"
        dadSecondTextField.text = "White"
        dadThirdTextField.text = "Brown"
        momsMomFirstTextField.text = "Brown"
        momsMomSecondTextField.text = "White"
        momsMomThirdTextField.text = "Black"
        momsDadFirstTextField.text = "Green"
        momsDadSecondTextField.text = "White"
        momsDadThidTextField.text = "L. Brown"
        dadsMomFirstTextField.text = "Green"
        dadsMomSecondTextField.text = "White"
        dadsMomThirdTextField.text = "Black"
        dadsDadFirstTextField.text = "Blue"
        dadsDadSecondTextField.text = "White"
        dadsDadThirdTextField.text = "Auburn"
        momsMomsMomFirstTextField.text = "Blue"
        momsMomsMomSecondTextField.text = "Brown"
        momsMomsMomThirdTextField.text = "Black"
        momsMomsDadFirstTextField.text = "Blue"
        momsMomsDadSecondTextField.text = "White"
        momsMomsDadThirdTextField.text = "Auburn"
        momsDadsMomFirstTextField.text = "Green"
        momsDadsMomSecondTextField.text = "Black"
        momsDadsMomThirdTextField.text = "Yellow"
        momsDadsDadFirstTextField.text = "Black"
        momsDadsDadSecondTextField.text = "Brown"
        momsDadsDadThirdTextField.text = "Red"
        dadsMomsMomFirstTextField.text = "Black"
        dadsMomsMomSecondTextField.text = "Black"
        dadsMomsMomThirdTextField.text = "Yellow"
        dadsMomsDadFirstTextField.text = "Blue"
        dadsMomsDadSecondTextField.text = "Black"
        dadsMomsDadThirdTextField.text = "Black"
        dadsDadsMomFirstTextField.text = "Blue"
        dadsDadsMomSecondTextField.text = "White"
        dadsDadsMomThirdTextField.text = "L. Brown"
        dadsDadsDadFirstTextField.text = "Blue"
        dadsDadsDadSecondTextField.text = "Brown"
        dadsDadsDadThirdTextField.text = "Red"
    }
}
