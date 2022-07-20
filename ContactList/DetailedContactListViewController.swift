//
//  DetailedContactListViewController.swift
//  ContactList
//
//  Created by Асанкул Садыков on 20/7/22.
//

import UIKit

class DetailedContactListViewController: UITableViewController {
    
    let data = DataStore()
    
    var contacts: [Person] {
        data.getContacts()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contacts[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedContacts", for: indexPath)

        let contact = contacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        content.text = contact.phone
        content.secondaryText = contact.mail
        cell.contentConfiguration = content

        return cell
    }

}
