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
    
    var person: Person!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName

        phone.text = person.phone
        mail.text = person.mail
    }
    


}
