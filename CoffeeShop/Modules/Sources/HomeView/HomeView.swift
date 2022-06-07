import SwiftUI
import Core
import DrinkDetail
public struct HomeView: View {
    
    public var categories: [String:[Drink]]{
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue}
        )
    }
    
    public var body: some View {
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
    //Init vazio para acessar de maneira pública
    public init (){}
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
