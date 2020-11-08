//
//  OnboardingView.swift
//  OnboardingDemo
//
//  Created by Merouane Bellaha on 08/11/2020.
//

import SwiftUI

struct OnboardingView: View {

    // MARK: - Properties

    let onboardingState: OnboardingState
    @EnvironmentObject var state: AppState

    // MARK: - Body

    var body: some View {
        VStack {
            if onboardingState == .state3 {
                Button(onboardingState.title) {
                    UserDefaults.standard.set(true, forKey: "isOnboarded")
                    state.user.userState = .shouldLogin
                }
            } else {
                Text(onboardingState.title)
            }
            HStack {
                if onboardingState != .state0 {
                    Button("previous") {
                        state.onboardingState = onboardingState.previousState()
                    }
                }
                Spacer()
                if onboardingState != .state3 {
                    Button("next") {
                        state.onboardingState = onboardingState.nextState()
                        print(state.onboardingState.rawValue)
                    }
                }
            }
            .padding(.horizontal, 60)
        }
    }
}
