//
//  EditVC.swift
//  Genome Calculator
//
//  Created by Can Balkaya on 1/3/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit
import CoreData

class EditVC: UIViewController {
    var secondChosenGene = ""
    var firstTF = false

    @IBOutlet weak var nameLabelForEditVC: UILabel!
    @IBOutlet weak var textViewForEditVC: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textViewForEditVC.isEditable = false
        
        if secondChosenGene != "" {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Genes")
            
            fetchRequest.predicate = NSPredicate(format: "name = %@", self.secondChosenGene)
            fetchRequest.returnsObjectsAsFaults = false
            
            do {
                
                let results = try context.fetch(fetchRequest)
                
                if results.count > 0 {
                    for result in results as! [NSManagedObject] {
                        
                        if let textView = result.value(forKey: "textView") as? String {
                            textViewForEditVC.text = textView
                        }
                        
                        if let name = result.value(forKey: "name") as? String {
                            nameLabelForEditVC.text = name
                        }
                    }
                }
            } catch {
                print("error")
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondAddVC" {
            let destinationVC = segue.destination as! AddVC
            destinationVC.chosenGene = secondChosenGene
            destinationVC.secondTF = firstTF
        }
    }
    
    @IBAction func editButton(_ sender: UIButton) {
        secondChosenGene = "a"
        firstTF = true
        performSegue(withIdentifier: "toSecondAddVC", sender: nil)
    }
}
