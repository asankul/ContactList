//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Асанкул Садыков on 24/7/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        sendDataToViewControllers()
        
    }
    
    private func sendDataToViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController
        else { return }
        guard let detailedContactListVC = viewControllers?.last as? DetailedContactListViewController
        else { return }
        
        let persons = Person.getContactList()
        contactListVC.persons = persons
        detailedContactListVC.persons = persons
        
    }

}
