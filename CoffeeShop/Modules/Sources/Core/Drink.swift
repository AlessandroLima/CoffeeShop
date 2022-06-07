import SwiftUI

public struct Drink: Codable, Hashable, Identifiable {
    
    public var id: Int
    public var name: String
    public var image: String
    public var description: String
    public var category: Category
    
}

public enum Category: String, Codable, Hashable, CaseIterable {
    case hot = "hot"
    case could = "cold"
}
