//
//  Coordinator.swift
//  Mvvm+Rxswift
//
//  Created by song on 2023/01/16.
//

import UIKit

class Coordinator {
  let window: UIWindow
  
  init(window: UIWindow) {
    self.window = window
    start()
  }
  
  func start() {
    let rootViewContorller = RootViewViewController()
    let navigationRootViewController = UINavigationController(rootViewController: rootViewContorller)
    window.rootViewController = navigationRootViewController
    window.makeKeyAndVisible()
  }
}
