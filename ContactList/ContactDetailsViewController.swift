//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Асанкул Садыков on 20/7/22.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phone: UILabel!
    @IBOutlet var mail: UILabel!
    
    var contact: Person!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = contact.fullName

        phone.text = contact.phone
        mail.text = contact.mail
    }
    


}
