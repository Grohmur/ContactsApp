//
//  DataManager.swift
//  ContactsApp
//
//  Created by Михаил Зверьков on 28.12.2021.
//

import Foundation

class DataManager {
    
    static let shaped = DataManager()
    
    let names = [
        "John", "Aaron", "Tim", "Ted",
        "Steven", "Sharon", "Nicola",
        "Allan", "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Butler", "Black", "Robertson",
        "Murthy", "Williams"
    ]
    
    let emails = [
        "aaaa@mail.ru", "bbbb@mail.ru", "cccc@mail.ru",
        "dddd@mail.ru", "eeee@mail.ru", "gggg@mail.ru",
        "hhhh@mail.ru", "qqqq@mail.ru", "wwww@mail.ru",
        "rrrr@mail.ru"
    ]
    
    let phones = [
        "123456789", "987654321", "132435678",
        "467493629", "185936027", "593728027",
        "489250698", "175937593", "294872645",
        "327469813"
    ]
    
    private init() {}
}

extension DataManager {
    static func getPercons () -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager.shaped
        
        for iteration in 0...(dataManager.names.count - 1) {
            let person = Person(name: dataManager.names[iteration],
                                surname: dataManager.surnames[iteration],
                                email: dataManager.emails[iteration],
                                phone: dataManager.phones[iteration])
            persons.append(person)
        }
        return persons
    }
}

