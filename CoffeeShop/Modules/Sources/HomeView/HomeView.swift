import SwiftUI
import Core
struct HomeView: View {
    
    var categories: [String:[Drink]]{
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView{
            
            List(categories.keys.sorted(), id: \String.self) { key in
                DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key]!)
                    .frame( height:320 )
                    .padding(.top)
                    .padding(.bottom)
            }
        .navigationBarTitle("Coffee Shop")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
