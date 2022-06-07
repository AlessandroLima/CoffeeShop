//
//  DrinkDetail.swift
//  CoffeeShop
//
//  Created by Alessandro Teixeira Lima on 24/05/20.
//  Copyright © 2020 Aletlima. All rights reserved.
//

import SwiftUI
import Core

public struct DrinkDetail: View {
    
    public var drink: Drink
    
    public var body: some View {
        NavigationView{
            List{
                ZStack(alignment: .bottom) {
                    Image(self.drink.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Rectangle()
                        .frame(height:80)
                        .opacity(0.25)
                        .blur(radius: 10)
                    HStack{
                        VStack(alignment: .leading, spacing: 8){
                            Text(self.drink.name)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        }
                        .padding(.leading)
                        .padding(.bottom)
                        Spacer()
                    }
                }
                .listRowInsets(EdgeInsets())
                VStack(alignment: .leading) {
                    Text(drink.description)
                        .foregroundColor(.primary)
                        .font(.body)
                        .lineLimit(nil)
                        .lineSpacing(12)
                    
                    HStack {
                        Spacer()
                        OrderButton()
                        Spacer()
                    }.padding(.top, 50)
                }
                .padding(.top)
                .padding(.bottom)
                
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        }
    }
    
    //Init vazio para acessar de maneira pública
    public init (drink: Drink = drinkData[3]){
        self.drink = drink
    }
}

public struct OrderButton: View{
    public var body: some View {
        Button(action: {}){
            Text("Comprar")
                .frame(width: 200, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.headline)
                .cornerRadius(10)
        }
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[3])
    }
}
