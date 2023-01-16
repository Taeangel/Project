//
//  OnboardingCoordinator.swift
//  Coordinator
//
//  Created by song on 2023/01/16.
//

import Foundation
import SwiftUI

class OnboardingCoordinator: Coordinator {
  
  var rootViewController = UIViewController()
  
  func start() {
    let view = OnboardingView {
      
    }
    
    rootViewController = UIHostingController(rootView: view)
  }
}
