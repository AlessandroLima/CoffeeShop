//
//  File.swift
//  
//
//  Created by Alessandro Teixeira Lima on 10/06/22.
//

import Foundation
import SwiftUI
import Core




public struct DrinkDetailCoordinator: View {
    
    public var drink: Drink
    
    public init(drink: Drink) {
        self.drink = drink
    }
    
    public var body: some View {
        DrinkDetail(drink: self.drink)
    }
    
    public var navlink: some View {
        NavigationLink(destination: DrinkDetailCoordinator(drink: drink)){
            DrinkItemCoordinator(drink: drink)
                .frame(width: 300)
                .padding(.trailing, 30)
        }
    }
    
}
