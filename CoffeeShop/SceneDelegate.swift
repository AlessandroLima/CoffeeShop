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
import Coordinators

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var applicationCoordinator: ApplicationCoordinator?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let applicationCoordinator = ApplicationCoordinator(window: window)
            applicationCoordinator.start()
            self.applicationCoordinator = applicationCoordinator
            window.makeKeyAndVisible()
        }
    }

}

