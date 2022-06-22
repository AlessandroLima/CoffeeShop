

import Foundation
import SwiftUI
import Core

public struct DrinkItemCoordinator: View {
    
    public var drink: Drink
    
    public init(drink: Drink) {
        self.drink = drink
    }
    
    public var body: some View {
        DrinkItem(drink: self.drink)
    }
    
    
    
}
