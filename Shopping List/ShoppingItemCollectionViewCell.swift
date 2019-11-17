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
        
        
    }
    var delegate: SelectionDelegate?
    
       var item: ShoppingItem? {
            didSet {
                updateViews()
            }
        }
        
        func updateViews() {
            guard let item = item else { return }
            if item.selected{
                addedStatus.text = "Added"
            } else {
                addedStatus.text = "Not Added"
            }
            
            itemName.text = item.name
            itemImage.image = item.image
            
        }
    }


// comment for commit
