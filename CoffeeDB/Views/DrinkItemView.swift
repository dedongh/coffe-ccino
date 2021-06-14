//
//  DringItemView.swift
//  CoffeeDB
//
//  Created by Bra Emma on 20/04/2021.
//

import SwiftUI

struct DrinkItemView: View {
    var drink: Drink
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0, content: {
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(drink.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                Text(drink.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .frame(height: 40)
            })
            
           
        }).padding()
    }
}

struct DrinkItemView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItemView(drink: drinkData[1])
    }
}
