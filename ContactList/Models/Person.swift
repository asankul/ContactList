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


extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let mails = DataStore.shared.mails.shuffled()

        
        let iterationCount = min(
            names.count,
            surnames.count,
            phones.count,
            mails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                mail: mails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}


enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
