//
//  DrinkRow.swift
//  CoffeeDB
//
//  Created by Bra Emma on 21/04/2021.
//

import SwiftUI

struct DrinkRow: View {
    var categoryName: String
    var drinks: [Drink]
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(self.categoryName)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.primary)
                    .padding(.horizontal, 10)
                Spacer()
                Link("MORE", destination: URL(string: "https://engineerskasa.com")!)
                    .foregroundColor(.secondary)
                    .padding(.trailing, 8)
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top) {
                    ForEach(drinks.shuffled(), id: \.self){ drink in
                       DrinkItemView(drink: drink)
                        .frame(width: 300)
                        .padding(.horizontal, 10)
                    
                    }
                }
            }
        }
       
       
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT DRINKS", drinks: drinkData)
            .preferredColorScheme(.dark)
    }
}
