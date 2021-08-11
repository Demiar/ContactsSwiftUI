//
//  Numbers.swift
//  ContactsSwiftUI
//
//  Created by Алексей on 10.08.2021.
//

import SwiftUI

struct Numbers: View {
    var dataManager: DataManager
    var body: some View {
        List{
            ForEach(dataManager.persons, id: \.self) { person in
                Section(header: Text("\(person.fullName)")){
                    PhoneMailCell(image: "phone", text: person.phoneNumber)
                    PhoneMailCell(image: "tray", text: person.email)
                }
                
            }
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(dataManager: DataManager.shared)
    }
}
