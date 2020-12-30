//
//  OnboardingView.swift
//  OnboardingDemo
//
//  Created by Merouane Bellaha on 08/11/2020.
//

import SwiftUI

struct OnboardingView: View {

    // MARK: - Properties

    @EnvironmentObject var state: AppState

    // MARK: - Body

    var body: some View {
        VStack {
            if state.onboardingState == .state3 {
                Button(state.onboardingState.title) {
                    UserDefaults.standard.set(true, forKey: "isOnboarded")
                    state.user.state = .shouldLogin
                }
            } else {
                Text(state.onboardingState.title)
            }
            HStack {
                if state.onboardingState != .state0 {
                    Button("previous") {
//                        state.onboardingState = state.onboardingState.previousState()
                        state.onboardingState.previousState()
                    }
                }
                Spacer()
                if state.onboardingState != .state3 {
                    Button("next") {
                        state.onboardingState.nextState()
//                        state.onboardingState = state.onboardingState.nextState()
                    }
                }
            }
            .padding(.horizontal, 60)
        }
    }
}
