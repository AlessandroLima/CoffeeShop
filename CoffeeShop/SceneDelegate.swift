//
//  SceneDelegate.swift
//  CoffeeShop
//
//  Created by Resource on 21/05/20.
//  Copyright © 2020 Aletlima. All rights reserved.
//

import UIKit
import SwiftUI
import HomeView

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
          let contentView = HomeViewCoordinator()

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

}

