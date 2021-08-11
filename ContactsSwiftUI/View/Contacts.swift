//
//  Contacts.swift
//  ContactsSwiftUI
//
//  Created by Алексей on 10.08.2021.
//

import SwiftUI

struct Contacts: View {
    var dataManager: DataManager
    var body: some View {
        List {
            ForEach(dataManager.persons, id: \.self) { person in
                NavigationLink(destination: DetailContact(person: person)){
                    Text("\(person.fullName)")
                }
            }
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(dataManager: DataManager.shared)
    }
}
