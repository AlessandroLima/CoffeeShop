//
//  DrinkRow.swift
//  CoffeeShop
//
//  Created by Resource on 22/05/20.
//  Copyright © 2020 Aletlima. All rights reserved.
//

import SwiftUI
import Core
import DrinkDetail

struct DrinkRow: View {
    
    var categoryName: String
    var drinks: [Drink]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top) {
                    ForEach(self.drinks, id: \.name) { drink in
                        
                        NavigationLink(destination: DrinkDetail(drink: drink)){
                            DrinkItem(drink: drink)
                            .frame(width: 300)
                            .padding(.trailing, 30)
                        }
                    }
                }
            }
        }.padding()
    }
    
    public func showDetailView(){
        
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Hot Drinks", drinks: drinkData)
    }
}
