//
//  SceneDelegate.swift
//  Coordinator
//
//  Created by song on 2023/01/16.
//

import UIKit
import SwiftUI

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

