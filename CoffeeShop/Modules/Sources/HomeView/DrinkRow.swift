import SwiftUI
import Core
import DrinkDetail


public struct DrinkRow: View {
    
    var categoryName: String
    var drinks: [Drink]
    
    public init(categoryName: String, drinks: [Drink]) {
        self.categoryName = categoryName
        self.drinks = drinks
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top) {
                    ForEach(self.drinks, id: \.name) { drink in
                        DrinkDetailCoordinator(drink: drink).navlink
                    }
                }
            }.padding()
        }
        
    }
 
}
    struct DrinkRow_Previews: PreviewProvider {
        static var previews: some View {
            DrinkRow(categoryName: "Hot Drinks", drinks: drinkData)
        }
    }
