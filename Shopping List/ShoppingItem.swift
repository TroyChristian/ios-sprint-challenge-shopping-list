//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Lambda_School_Loaner_219 on 11/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
struct ShoppingItem{
    var name: String
    var selected:Bool
    
    init(name:String, selected:Bool = false){
        self.name = name
        self.selected = selected
    }
}
