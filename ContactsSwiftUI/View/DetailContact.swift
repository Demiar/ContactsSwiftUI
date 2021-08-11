//
//  DetailContact.swift
//  ContactsSwiftUI
//
//  Created by Алексей on 11.08.2021.
//

import SwiftUI

struct DetailContact: View {
    let person: Person
    var body: some View {
        Form{
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .padding()
                    Spacer()
                }
                PhoneMailCell(image: "phone", text: person.phoneNumber)
                PhoneMailCell(image: "tray", text: person.email)
            }
        }
        .padding(.horizontal, -20)
        .navigationBarTitle(person.fullName, displayMode: .large)
    }
}

struct DetailContact_Previews: PreviewProvider {
    static var previews: some View {
        DetailContact(person: Person(name: "123", lastName: "123", phoneNumber: "321", email: "321"))
    }
}
