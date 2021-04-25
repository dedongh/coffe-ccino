//
//  Drink.swift
//  CoffeeDB
//
//  Created by Bra Emma on 20/04/2021.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    // identifiable: to display things in a list
    // codable: to be able to map json data into our model
    // Hashable: for a very efficient categorizing process
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
