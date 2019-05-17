//
//  ViewController.swift
//  Genome Calculator
//
//  Created by Can Balkaya on 11/19/18.
//  Copyright © 2018 Can Balkaya. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    @IBOutlet weak var tableView: UITableView!
    var nameArray = [String]()
    var textViewArray = [String]()
    
    var selectedGene = ""
    
    var searchTexts = [String]()
    var searching = false
    
    let search = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getInfo()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        search.searchResultsUpdater = self as? UISearchResultsUpdating
        
        search.searchBar.delegate = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Find a child"
        search.searchBar.keyboardAppearance = .dark
        search.searchBar.tintColor = #colorLiteral(red: 0, green: 0.9998713136, blue: 0.526712656, alpha: 1)
        search.searchResultsUpdater = self as? UISearchResultsUpdating
        navigationItem.searchController = search
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.getInfo), name: NSNotification.Name(rawValue: "newGenes"), object: nil)
    }
    
    @objc func getInfo() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Genes")
        fetchRequest.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(fetchRequest)
            
            if results.count > 0 {
                for result in results as! [NSManagedObject] {
                    
                    if let name = result.value(forKey: "name") as? String {
                        self.nameArray.append(name)
                    }
                    
                    if let textView = result.value(forKey: "textView") as? String {
                        self.textViewArray.append(textView)
                    }
                    
                    self.tableView.reloadData()
                }
            }
        } catch {
            print("error")
        }
    }
    
    func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let moc = getContext()
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Genes")
            
            let result = try? moc.fetch(fetchRequest)
            let resultData = result as! [NSManagedObject]
            
            for object in resultData {
                if let name = object.value(forKey: "name") as? String {
                    if name == nameArray[indexPath.row] {
                        moc.delete(object)
                        nameArray.remove(at: indexPath.row)
                        
                        self.tableView.reloadData()
                        
                        do {
                            try moc.save()
                            print("saved!")
                        } catch let error as NSError  {
                            print("Could not save \(error), \(error.userInfo)")
                        } catch {}
                        break
                    }
                }
                
                if let textView = object.value(forKey: "textView") as? String {
                    if textView == textViewArray[indexPath.row] {
                        moc.delete(object)
                        textViewArray.remove(at: indexPath.row)
                        
                        self.tableView.reloadData()
                        
                        do {
                            try moc.save()
                            print("saved!")
                        } catch let error as NSError  {
                            print("Could not save \(error), \(error.userInfo)")
                        } catch {}
                        break
                    }
                }
            }
        }
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchTexts.count
        } else {
            return nameArray.count
        }
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")

        if searching {
            cell!.textLabel?.text = searchTexts[indexPath.row]
//            cell!.detailTextLabel?.text = textViewArray[indexPath.row]
        } else {
            cell!.textLabel?.text = nameArray[indexPath.row]
            cell!.detailTextLabel?.text = textViewArray[indexPath.row]
        }
        
        return cell!
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toEditVC" {
            let destinationVC = segue.destination as! EditVC
            destinationVC.secondChosenGene = selectedGene
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedGene = nameArray[indexPath.row]
        performSegue(withIdentifier: "toEditVC", sender: nil)
    }
    
    @IBAction func addButton(_ sender: Any) {
        selectedGene = ""
        performSegue(withIdentifier: "toAddVC", sender: nil)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchTexts = nameArray.filter({ $0.lowercased().prefix(searchText.count) == searchText.lowercased() })
        searching = true
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        search.searchBar.text = ""
        tableView.reloadData()
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        let term = search.searchBar.text
//        searchTexts = Data.filter { $0.contains(term) }
        searching = true
        tableView.reloadData()
    }
}
