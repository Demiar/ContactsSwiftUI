//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Алексей on 10.08.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataManager = DataManager.shared
    var body: some View {
        NavigationView{
            TabView {
                Contacts(dataManager: dataManager)
                    .tabItem {
                        Label("Contacts",
                              systemImage: "person.3")
                    }
                Numbers(dataManager: dataManager)
                    .tabItem {
                        Label("Numbers",
                              systemImage: "phone")
                    }
            }
            .navigationBarTitle("Contact List", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
