@main
public struct CoffeeShop {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(CoffeeShop().text)
    }
}
