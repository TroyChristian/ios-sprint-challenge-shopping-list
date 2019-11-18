//
//  submitOrderViewController.swift
//  Shopping List
//
//  Created by Lambda_School_Loaner_219 on 11/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class submitOrderViewController: UIViewController {
    @IBAction func changeOrderButton(_ sender: Any) {
        dismiss(animated: true)
        
    }
    
    
    @IBAction func submitOrder(_ sender: Any) {
        
        guard let name = nameTextField.text else {return}
        guard let address = addressTextField.text else {return}
          
        let alert = UIAlertController(title: "Delivery for \(name)", message: "Your items will be delivered to \(address) within 15 minutes", preferredStyle: .alert)
              alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
              present(alert, animated: true, completion: nil)
    }
    @IBOutlet weak var notifLabel: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
     var notiflabelplaceholder:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        notifLabel.text? = notiflabelplaceholder
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
