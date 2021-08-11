//
//  PhoneMailCell.swift
//  ContactsSwiftUI
//
//  Created by Алексей on 11.08.2021.
//

import SwiftUI

struct PhoneMailCell: View {
    var image: String
    var text: String
    
    var body: some View {
        HStack{
            Image(systemName: image)
                .foregroundColor(.blue)
            Text("\(text)")
                .frame(alignment: .leading)
        }
    }
}

struct PhoneMailCell_Previews: PreviewProvider {
    static var previews: some View {
        PhoneMailCell(image: "phone", text: "text")
    }
}
