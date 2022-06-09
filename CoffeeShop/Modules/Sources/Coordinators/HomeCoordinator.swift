import SwiftUI
import HomeView

public class HomeCoordinator: CoordinatorProtocol {
    
    public var window: UIWindow
    
    public init(window: UIWindow){
        self.window = window
    }
    
    public func start() {
        window.rootViewController = UIHostingController(rootView: HomeView())
    }
    
}

import Foundation
