//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Lambda_School_Loaner_219 on 11/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct ShoppingItem{
    var name: "Apple"
    var isAdded: Bool
    
    init(name:String, isAdded:Bool = false){
        self.name = name
        self.isAdded = isAdded
    }
}
