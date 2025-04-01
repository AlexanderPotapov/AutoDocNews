//
//  SceneDelegate.swift
//  AutoDocNews
//
//  Created by Alexander on 03.02.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
        let factory = NewsSceneFactory()
        let newsSceneVC = factory.makeNewsScene()

        let navigationController = UINavigationController(rootViewController: newsSceneVC)

        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
    }
}
