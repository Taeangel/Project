//
//  OnboardingView.swift
//  Coordinator
//
//  Created by song on 2023/01/16.
//

import SwiftUI

struct OnboardingView: View {
  
  var doneRequested: () -> ()
  
  var body: some View {
    TabView {
      ScaledImageView(name: "개", tagNum: 0)
      ScaledImageView(name: "리트리버", tagNum: 1)
      ScaledImageView(name: "새끼리트리버", tagNum: 2)
      
      Button("Done") {
        
      }
    }
    .tabViewStyle(PageTabViewStyle())
    .background(
      Color.black.ignoresSafeArea(.all)
    )
   
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView {
      
    }
  }
}

struct ScaledImageView: View {
  let name: String
  let tagNum: Int
  var body: some View {
    Image(name)
      .resizable()
      .scaledToFit()
      .tag(tagNum)
  }
}
