//
//  ShoppingItemListController.swift
//  Shopping List
//
//  Created by Lambda_School_Loaner_219 on 11/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
class ShoppingItemListController {
   
    
   var itemNames = [ShoppingItem(name: "Apple"),
   ShoppingItem(name: "Grapes"),
   ShoppingItem(name: "Milk"),
   ShoppingItem(name: "Muffin"),
   ShoppingItem(name: "Popcorn"),
   ShoppingItem(name: "Soda"),
   ShoppingItem(name: "Strawberries")]
  
    
  
    

    
    func toggleSelectedState(_ shoppingItem: ShoppingItem){
        
        guard let index = itemNames.firstIndex(of: shoppingItem) else { return }
       
        
        itemNames[index].selected = !itemNames[index].selected
      
        
    }




    var unselectedItems: [ShoppingItem] {
        return itemNames.filter({ $0.selected == false })
    }
    
     var shoppingItems: [ShoppingItem] {
        return itemNames.filter({ $0.selected })
    }
}
