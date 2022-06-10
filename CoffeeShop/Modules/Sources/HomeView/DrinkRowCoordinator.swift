//
//  DrinkRowCoordinator.swift
//  CoffeeShop
//
//  Created by Alessandro Teixeira Lima on 10/06/22.
//  Copyright © 2022 Aletlima. All rights reserved.
//

import Foundation
import SwiftUI
import Core

struct DrinkRowCoordinator: View{
    
    var categoryName: String
    var drinks: [Drink]
    
    var body: some View {
        DrinkRow(categoryName: categoryName, drinks: drinks)
    }
    
}

