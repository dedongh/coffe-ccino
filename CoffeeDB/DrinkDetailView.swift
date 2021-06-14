//
//  DrinkDetailView.swift
//  CoffeeDB
//
//  Created by Bra Emma on 25/04/2021.
//

import SwiftUI

struct DrinkDetailView: View {
    var drink: Drink
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                ZStack(alignment: .bottom) {
                    Image(drink.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Rectangle()
                        .frame(height: 80)
                        .opacity(0.25)
                        .blur(radius: 10)
                    HStack{
                        VStack(alignment: .leading, spacing: 8, content: {
                            Text(drink.name)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        }).padding(.leading)
                        .padding(.bottom)
                        Spacer()
                    }
                }
                Text(drink.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
                OrderButton()
                    .padding(.top, 50)
            }
        }.edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
        
    }
}

struct OrderButton: View {
    var body: some View{
        Button(action: {
            
        }, label: {
            Text("Order Now")
        }).frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .foregroundColor(.white)
        .font(.headline)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct DrinkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetailView(drink: drinkData[0])
    }
}
