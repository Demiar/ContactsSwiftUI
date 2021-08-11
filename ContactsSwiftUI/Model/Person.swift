//
//  Person.swift
//  ContactsSwiftUI
//
//  Created by Алексей on 10.08.2021.
//

import Foundation

struct Person: Hashable {
    let name: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(lastName) \(name)"
    }
}
