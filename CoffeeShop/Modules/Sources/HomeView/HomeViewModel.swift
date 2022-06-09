import Foundation
import Core

public struct HomeViewModel {
    
    public var categories: [String:[Drink]]{
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue}
        )
    }
}
