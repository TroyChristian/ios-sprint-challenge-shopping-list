//
//  SelectionDelegate.swift
//  Shopping List
//
//  Created by Lambda_School_Loaner_219 on 11/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
protocol SelectionDelegate: class {
    func toggleHasBeenSelected(cell:ShoppingItemCollectionViewCell)
}
