//
//  SceneDelegate.swift
//  Mvvm+Rxswift
//
//  Created by song on 2023/01/16.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let scene = (scene as? UIWindowScene) else { return }
    
    self.window = UIWindow(windowScene: scene)
    let cooridnator = Coordinator(window: self.window!)
    cooridnator.start()
  }
}

