import SwiftUI
import HomeView

public class ApplicationCoordinator: CoordinatorProtocol {
    
    public var window: UIWindow
    
    public init(window: UIWindow){
        self.window = window
    }
    
    public func start() {
        let homeCoordinator = HomeCoordinator(window: self.window)
        homeCoordinator.start()
    }
    
}
