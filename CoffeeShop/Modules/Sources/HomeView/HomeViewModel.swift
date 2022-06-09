import Foundation
import Core
import SwiftUI

public class HomeViewModel: ObservableObject {
    
    public var categories: [String:[Drink]]{
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue}
        )
    }
}
