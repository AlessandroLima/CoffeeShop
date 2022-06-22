//
//  DrinkItem.swift
//  CoffeeShop
//
//  Created by Resource on 22/05/20.
//  Copyright © 2020 Aletlima. All rights reserved.
//

import SwiftUI
import Core

public struct DrinkItem: View {
    
    public var drink: Drink
    
    public init(drink: Drink){
        self.drink = drink
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text(drink.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                
                Text(drink.description)
                               .foregroundColor(.secondary)
                               .font(.subheadline)
                               .multilineTextAlignment(.leading)
                               .lineLimit(2)
                               .frame(height:40)
                           
            }
            
           
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink:drinkData[0])
    }
}
