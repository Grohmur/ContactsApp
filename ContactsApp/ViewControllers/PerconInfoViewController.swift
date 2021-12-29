//
//  PerconInfoViewController.swift
//  ContactsApp
//
//  Created by Михаил Зверьков on 29.12.2021.
//

import UIKit

class PerconInfoViewController: UIViewController {
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = personInfo.name + " " + personInfo.surname
        
        phoneLabel.text = "phone: " + personInfo.phone
        emailLabel.text = "email: " + personInfo.email
    }
    


}
