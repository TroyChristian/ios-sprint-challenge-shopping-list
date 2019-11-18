//
//  ShoppingItemCollectionViewController.swift
//  Shopping List
//
//  Created by Lambda_School_Loaner_219 on 11/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit



class ShoppingItemCollectionViewController: UICollectionViewController, SelectionDelegate {
    func toggleHasBeenSelected(cell: ShoppingItemCollectionViewCell) {
        guard let indexPath = collectionView?.indexPath(for: cell) else { return }
        let item = shoppingItemListController.itemNames[indexPath.item]
        shoppingItemListController.toggleSelectedState(item)
        collectionView?.reloadData()
        
        
        /*     func toggleHasBeenReadFor(cell: BookTableViewCell) {
            guard let indexPath = tableView.indexPath(for: cell) else { return }
            
            let book = bookFor(indexPath: indexPath)
            
            bookController.updateHasBeenRead(for: book)
            
            tableView.reloadData()*/
       
    }
    
    
    
    let shoppingItemListController = ShoppingItemListController() 

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    

     

       
       

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        collectionView?.reloadData()
    }



    // MARK: UICollectionViewDataSource

   
    


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return shoppingItemListController.itemNames.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as? ShoppingItemCollectionViewCell else {return UICollectionViewCell()}
    
        // Configure the cell
        let item = shoppingItemListController.itemNames[indexPath.item]
        cell.delegate = self
        cell.item = item
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       // let selectedItem = shoppingItemListController.itemNames[indexPath.item]
        //shoppingItemListController.addToShoppingItems(selectedItem)
        if let cell = collectionView.cellForItem(at: indexPath) as? ShoppingItemCollectionViewCell {
            cell.delegate = self
            
            
            toggleHasBeenSelected(cell: cell)
            print(shoppingItemListController.shoppingItems.count)
            
       
        
      /*   let alert = UIAlertController(title: "\(selectedItem.name) added to cart", message: "\(shoppingItemListController.shoppingItems.count) items in cart", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil) */
            
            
            
           
        }
    }
    

    // MARK: UICollectionViewDelegate

   
    

    

    

  
   /*
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    } */
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nextButton" {
            guard let vc = segue.destination as? submitOrderViewController else {return}
            vc.notiflabelplaceholder = "You currently have \(shoppingItemListController.shoppingItems.count) items in your shopping list"
        }
    }
    


}
