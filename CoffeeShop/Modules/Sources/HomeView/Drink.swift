import SwiftUI

struct Drink: Codable, Hashable, Identifiable {
    
    var id: Int
    var name: String
    var image: String
    var description: String
    var category: Category
    
    enum Category: String, Codable, Hashable, CaseIterable {
        case hot = "hot"
        case could = "cold"
    }

}
