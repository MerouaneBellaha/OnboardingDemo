//
//  OnboardingDemoApp.swift
//  OnboardingDemo
//
//  Created by Merouane Bellaha on 08/11/2020.
//

import SwiftUI

@main
struct OnboardingDemoApp: App {

    let state = AppState()

    var body: some Scene {
        WindowGroup {
            LandingView().environmentObject(state)
        }
    }
}
