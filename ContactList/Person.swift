//
//  Person.swift
//  ContactList
//
//  Created by Асанкул Садыков on 20/7/22.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let mail: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}
