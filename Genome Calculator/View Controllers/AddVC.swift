//
//  AddVC.swift
//  Genome Calculator
//
//  Created by Can Balkaya on 11/19/18.
//  Copyright © 2018 Can Balkaya. All rights reserved.
//

import UIKit
import CoreData

class AddVC: UIViewController {
    var chosenGene = ""
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var eyesTextField1: UITextField!
    @IBOutlet weak var skinTextField1: UITextField!
    @IBOutlet weak var hairTextField1: UITextField!
    @IBOutlet weak var anemiaText1: UITextField!
    
    @IBOutlet weak var eyesTextField2: UITextField!
    @IBOutlet weak var skinTextField2: UITextField!
    @IBOutlet weak var hairTextField2: UITextField!
    @IBOutlet weak var anemiaTextField2: UITextField!
    
    @IBOutlet weak var eyesTextField3: UITextField!
    @IBOutlet weak var skinTextField3: UITextField!
    @IBOutlet weak var hairTextField3: UITextField!
    @IBOutlet weak var anemiaTextField3: UITextField!
    
    @IBOutlet weak var eyesTextField4: UITextField!
    @IBOutlet weak var skinTextField4: UITextField!
    @IBOutlet weak var hairTextField4: UITextField!
    @IBOutlet weak var anemiaTextField4: UITextField!
    
    @IBOutlet weak var eyesTextField5: UITextField!
    @IBOutlet weak var skinTextField5: UITextField!
    @IBOutlet weak var hairTextField5: UITextField!
    @IBOutlet weak var anemiaTextField5: UITextField!
    
    @IBOutlet weak var eyesTextField6: UITextField!
    @IBOutlet weak var skinTextField6: UITextField!
    @IBOutlet weak var hairTextField6: UITextField!
    @IBOutlet weak var anemiaTextField6: UITextField!
    
    @IBOutlet weak var eyesTextField7: UITextField!
    @IBOutlet weak var skinTextField7: UITextField!
    @IBOutlet weak var hairTextField7: UITextField!
    @IBOutlet weak var anemiaTextField7: UITextField!
    
    @IBOutlet weak var eyesTextField8: UITextField!
    @IBOutlet weak var skinTextField8: UITextField!
    @IBOutlet weak var hairTextField8: UITextField!
    @IBOutlet weak var anemiaTextField8: UITextField!
    
    @IBOutlet weak var eyesTextField9: UITextField!
    @IBOutlet weak var skinTextField9: UITextField!
    @IBOutlet weak var hairTextField9: UITextField!
    @IBOutlet weak var anemiaTextField9: UITextField!
    
    @IBOutlet weak var eyesTextField10: UITextField!
    @IBOutlet weak var skinTextField10: UITextField!
    @IBOutlet weak var hairTextField10: UITextField!
    @IBOutlet weak var anemiaTextField10: UITextField!
    
    @IBOutlet weak var eyesTextField11: UITextField!
    @IBOutlet weak var skinTextField11: UITextField!
    @IBOutlet weak var hairTextField11: UITextField!
    @IBOutlet weak var anemiaTextField11: UITextField!
    
    @IBOutlet weak var eyesTextField12: UITextField!
    @IBOutlet weak var skinTextField12: UITextField!
    @IBOutlet weak var hairTextField12: UITextField!
    @IBOutlet weak var anemiaTextField12: UITextField!
    
    @IBOutlet weak var eyesTextField13: UITextField!
    @IBOutlet weak var skinTextField13: UITextField!
    @IBOutlet weak var hairTextField13: UITextField!
    @IBOutlet weak var anemiaTextField13: UITextField!
    
    @IBOutlet weak var eyesTextField14: UITextField!
    @IBOutlet weak var skinTextField14: UITextField!
    @IBOutlet weak var hairTextField14: UITextField!
    @IBOutlet weak var anemiaTextField14: UITextField!
    
    var nameText = ""
    var eyesTexts = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    var skinTexts = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    var hairTexts = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    var anemiaTexts = ["", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if chosenGene != "" {
            retrieveData()
        }
        
        nameTextField.text = nameText
        
        eyesTextField1.text = eyesTexts[0]
        eyesTextField2.text = eyesTexts[1]
        eyesTextField3.text = eyesTexts[2]
        eyesTextField4.text = eyesTexts[3]
        eyesTextField5.text = eyesTexts[4]
        eyesTextField6.text = eyesTexts[5]
        eyesTextField7.text = eyesTexts[6]
        eyesTextField8.text = eyesTexts[7]
        eyesTextField9.text = eyesTexts[8]
        eyesTextField10.text = eyesTexts[9]
        eyesTextField11.text = eyesTexts[10]
        eyesTextField12.text = eyesTexts[11]
        eyesTextField13.text = eyesTexts[12]
        eyesTextField14.text = eyesTexts[13]
        
        skinTextField1.text = skinTexts[0]
        skinTextField2.text = skinTexts[1]
        skinTextField3.text = skinTexts[2]
        skinTextField4.text = skinTexts[3]
        skinTextField5.text = skinTexts[4]
        skinTextField6.text = skinTexts[5]
        skinTextField7.text = skinTexts[6]
        skinTextField8.text = skinTexts[7]
        skinTextField9.text = skinTexts[8]
        skinTextField10.text = skinTexts[9]
        skinTextField11.text = skinTexts[10]
        skinTextField12.text = skinTexts[11]
        skinTextField13.text = skinTexts[12]
        skinTextField14.text = skinTexts[13]
        
        hairTextField1.text = hairTexts[0]
        hairTextField2.text = hairTexts[1]
        hairTextField3.text = hairTexts[2]
        hairTextField4.text = hairTexts[3]
        hairTextField5.text = hairTexts[4]
        hairTextField6.text = hairTexts[5]
        hairTextField7.text = hairTexts[6]
        hairTextField8.text = hairTexts[7]
        hairTextField9.text = hairTexts[8]
        hairTextField10.text = hairTexts[9]
        hairTextField11.text = hairTexts[10]
        hairTextField12.text = hairTexts[11]
        hairTextField13.text = hairTexts[12]
        hairTextField14.text = hairTexts[13]
        
        //        textFieldsForEyes = [textFields[0].text, textFields[4].text, textFields[8].text, textFields[12].text, textFields[16].text, textFields[20].text, textFields[24].text, textFields[28].text, textFields[32].text, textFields[36].text, textFields[40].text, textFields[44].text, textFields[48].text, textFields[52].text] as! [String]
        //        textFieldsForSkin = [textFields?[1].text, textFields?[5].text, textFields?[9].text, textFields?[13].text, textFields?[17].text, textFields?[21].text, textFields?[25].text, textFields?[29].text, textFields?[33].text, textFields?[37].text, textFields?[41].text, textFields?[45].text, textFields?[49].text, textFields?[53].text] as! [String]
        //        textFieldsForHair = [textFields?[2].text, textFields?[6].text, textFields?[10].text, textFields?[14].text, textFields?[18].text, textFields?[22].text, textFields?[26].text, textFields?[30].text, textFields?[34].text, textFields?[38].text, textFields?[42].text, textFields?[46].text, textFields?[50].text, textFields?[54].text] as! [String]
        //        textFieldsForAnemia = [textFields?[3].text, textFields?[7].text, textFields?[11].text, textFields?[15].text, textFields?[19].text, textFields?[23].text, textFields?[27].text, textFields?[31].text, textFields?[35].text, textFields?[39].text, textFields?[43].text, textFields?[47].text, textFields?[51].text, textFields?[55].text] as! [String]
        
        //        textFieldsForEyes.append(textFields![0].text!)
        //        textFieldsForSkin.append(textFields![1].text!)
        //        textFieldsForHair.append(textFields![2].text!)
        //        textFieldsForAnemia.append(textFields![3].text!)
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
   
    
    func retrieveData() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Genes")
        
        do {
            let results = try? managedContext.fetch(fetchRequest)
            
            if results!.count > 0 {
                for result in results as! [NSManagedObject] {
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
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier ==  "toInputVC" {
//            let destnationVC = segue.destination as! InputVC
//            destnationVC.name = nameText
//            destnationVC.secondEyesTexts = eyesTexts
//            destnationVC.secondSkinTexts = skinTexts
//            destnationVC.secondHairTexts = hairTexts
//            destnationVC.secondAnemiaTexts = anemiaTexts
//        }
    
//        if segue.identifier == "scToContainerVC" {
//            let destinationVC = segue.destination as? ContainerVC
////            destinationVC?.textField = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
////            destinationVC?.textField1 = textFields1
//        }
//    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
//        nameText = nameTextField.text!
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
    
    @IBAction func tryButton(_ sender: UIButton) {
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
