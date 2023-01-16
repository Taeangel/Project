//
//  ApplicationCoordinator.swift
//  Coordinator
//
//  Created by song on 2023/01/16.
//

import Foundation
import SwiftUI
import UIKit

class ApplicationCoordinator: Coordinator {
  
  var window: UIWindow
  
  var childCoordinators: [Coordinator] = []
  
  init(window: UIWindow) {
    self.window = window
  }
  
  func start() {
    let onboardingCoordinator = OnboardingCoordinator()
    onboardingCoordinator.start()
    self.childCoordinators = [onboardingCoordinator]
    window.rootViewController = onboardingCoordinator.rootViewController
  }
}
