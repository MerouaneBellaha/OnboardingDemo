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
            if state.onboardingStep.isLastStep {
                Button(state.onboardingStep.title) {
                    UserDefaults.standard.set(true, forKey: "isOnboarded")
                    state.user.state = .shouldLogin
                }
            } else {
                Text(state.onboardingStep.title)
            }
            HStack {
                if !state.onboardingStep.isFirstStep {
                    Button("previous") {
                        state.onboardingStep.previousStep()
                    }
                }
                Spacer()
                if !state.onboardingStep.isLastStep {
                    Button("next") {
                        state.onboardingStep.nextStep()
                    }
                }
            }
            .padding(.horizontal, 60)
        }
    }
}
