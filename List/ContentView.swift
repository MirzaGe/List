//
//  ContentView.swift
//  List
//
//  Created by sherry on 23/08/2021.
//

import SwiftUI

struct ContentView: View {
    let countryList: [Country] = [
        Country(id: 0, name: "Mozambique", n: "e", popullation: 1980),Country(id: 1, name: "USA", n: "f", popullation: 19990),Country(id: 0, name: "Mozambique", n: "3", popullation: 1980),Country(id: 2, name: "Mozamb", n: "ee", popullation: 19830),Country(id: 3, name: "Mozbique", n: "ff", popullation: 19840),Country(id: 4, name: "Moambique", n: "ds", popullation: 19840),Country(id: 5, name: "Moambique", n: "ddddds", popullation: 198440),]
    var names = [ "Maria","Alberto","James","Leandro","Georgina"]
    var body: some View {
        List(self.countryList, id: \.id) {
            country in Text (country.name)
                .bold()
                .font(.caption)
        }
    }
}

struct Country: Identifiable {
    let id: Int
    let name: String
    let n: String
    let popullation: Int
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
