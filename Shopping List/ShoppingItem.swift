//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Lambda_School_Loaner_219 on 11/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
struct ShoppingItem: Equatable{
    var name: String
    let image: UIImage?
    var selected:Bool
    
    init(name:String, selected:Bool = false){
        self.name = name
        self.image = UIImage(named: name)
        self.selected = selected
    }
}
