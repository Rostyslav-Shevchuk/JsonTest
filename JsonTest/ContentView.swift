//
//  ContentView.swift
//  JsonTest
//
//  Created by Ростислав on 13.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    private var people: [Person] = Person.allPeople
    
    var body: some View {
        NavigationView {
            List {
                ForEach(people, id: \.firstName) { person in
                    NavigationLink(destination: DeteilView(person: person)){
                        VStack(alignment: .leading) {
                            Text("\(person.firstName) \(person.surname)")
                                .bold()
                            Text("\(person.phoneNumbers[0].number)")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(6)
                }
            }
            .navigationTitle("PhoneBook")
        }
    }
}

#Preview {
    ContentView()
}
