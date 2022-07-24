//
//  DataStore.swift
//  ContactList
//
//  Created by Асанкул Садыков on 20/7/22.
//

import Foundation


class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Alexei", "Sasha",
        "Tanya", "Biba",
        "Boba", "Gleb"
    ]
    let surnames = [
        "Fedoseev", "Bilan",
        "Malinin", "Cook",
        "Ross", "Kim"
    ]
    let phones = [
        "111111", "222222",
        "333333", "444444",
        "555555", "666666"
    ]
    let mails = [
        "Alexei@mail.ru", "Sasha@mail.ru",
        "Tanya@mail.ru", "Biba@mail.ru",
        "Boba@mail.ru", "Gleb@mail.ru"
    ]
    
    private init() {}
}
