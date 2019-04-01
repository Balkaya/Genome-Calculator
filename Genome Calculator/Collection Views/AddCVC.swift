//
//  AddCVC.swift
//  Genome Calculator
//
//  Created by Can Balkaya on 3/31/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class AddCVC: ViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var personNameTextField: UITextField!
    @IBOutlet weak var addCollectionView: UICollectionView!
    
    var buttons = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        buttons.append(<#UIButton#>)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell1", for: indexPath) as! AddCVCCellCollectionViewCell
//        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        let button = cell.viewWithTag(1) as! UIButton
        button.buttonType = buttons.object(at: (indexPath as NSIndexPath).row%9) as? UIButton
        return cell
    }
}
