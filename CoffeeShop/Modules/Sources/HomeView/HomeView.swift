import SwiftUI
import Core
import DrinkDetail

public struct HomeView: View {
    
    var homeViewModel: HomeViewModel = HomeViewModel()
    
    public var body: some View {
        NavigationView{
            
            List(homeViewModel.categories.keys.sorted(), id: \String.self) { key in
                DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.homeViewModel.categories[key]!)
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
