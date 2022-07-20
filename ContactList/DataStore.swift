//
//  DataStore.swift
//  ContactList
//
//  Created by Асанкул Садыков on 20/7/22.
//

import Foundation


class DataStore {
    
    var names = ["Alexei", "Sasha", "Tanya", "Biba", "Boba", "Gleb"]
    var surnames = ["Fedoseev", "Bilan", "Malinin", "Cook", "Ross", "Kim"]
    var phones = ["111111", "222222", "333333", "444444", "555555", "666666"]
    var mails = ["Alexei@mail.ru", "Sasha@mail.ru", "Tanya@mail.ru", "Biba@mail.ru", "Boba@mail.ru", "Gleb@mail.ru"]
    
    var person: [Person] = []
    
    func getContacts() -> [Person] {
        while !self.names.isEmpty {
            names.shuffle()
            surnames.shuffle()
            phones.shuffle()
            mails.shuffle()
            
            person.append(
                Person(
                    name: names.first ?? "",
                    surname: surnames.first ?? "",
                    phone: phones.first ?? "",
                    mail: mails.first ?? ""
                )
            )
            
            names.remove(at: 0)
            surnames.remove(at: 0)
            phones.remove(at: 0)
            mails.remove(at: 0)
        }
        return person
    }
    
}
