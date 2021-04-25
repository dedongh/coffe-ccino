//
//  ContentView.swift
//  CoffeeDB
//
//  Created by Bra Emma on 20/04/2021.
//

import SwiftUI

struct ContentView: View {
    // create dictionary
    var categories: [String:[Drink]]{
        .init(
            grouping: drinkData, by: {$0.category.rawValue}
        )
    }
    var body: some View {
        NavigationView{
            List(categories.keys.sorted(), id: \.self){key in
                DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key]!)
            }
            .navigationTitle("Drinks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
