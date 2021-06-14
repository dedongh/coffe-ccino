//
//  ContentView.swift
//  CoffeeDB
//
//  Created by Bra Emma on 20/04/2021.
//

import SwiftUI

struct ContentView: View {
    // create dictionary with Strings as keys
    //and array of drinks as values
    var categories: [String:[Drink]]{
        .init(
            grouping: drinkData, by: {$0.category.rawValue}
        )
    }
    var body: some View {
        NavigationView{
            List(categories.keys.sorted(), id: \.self){key in
                DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
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
