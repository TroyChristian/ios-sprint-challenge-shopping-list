//
//  ShoppingItemCollectionViewCell.swift
//  Shopping List
//
//  Created by Lambda_School_Loaner_219 on 11/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShoppingItemCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var addedStatus: UILabel!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBAction func hiddenButton(_ sender: Any) {
        print("Hidden Button!")
        
        
    }
    @IBAction func TEST(_ sender: Any)
    {delegate?.toggleHasBeenSelected(cell: self)
    }
    var delegate: SelectionDelegate?
    
       var item: ShoppingItem? {
            didSet {
                updateViews()
            }
        }
        
        func updateViews() {
            guard let item = item else { return }
            
            let text = item.selected ? "Added" : "Not Added"
            addedStatus.text = text 
            itemName.text = item.name
            itemImage.image = item.image
           
            
            
           
            
            
        }
    



}
