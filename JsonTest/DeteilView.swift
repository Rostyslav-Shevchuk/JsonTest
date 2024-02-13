//
//  DeteilView.swift
//  JsonTest
//
//  Created by Ростислав on 13.02.2024.
//

import SwiftUI

struct DeteilView: View {
    var person: Person
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(person.firstName) \(person.surname)")
                .bold()
            Text("\(person.phoneNumbers[0].number)")
            Text("\(person.address.streetAddress)")
            Text("\(person.address.city)")
        }
    }
}

#Preview {
    DeteilView(person: Person.samplePerson)
}
