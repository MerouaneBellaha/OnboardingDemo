//
//  LoginView.swift
//  OnboardingDemo
//
//  Created by Merouane Bellaha on 08/11/2020.
//

import SwiftUI

struct LogInView: View {

    // MARK: - Properties

    @EnvironmentObject var state: AppState

    // MARK: - Body

    var body: some View {
        VStack {
            Button("login") {
                state.user.userState = .isLogin
            }
            Button("isOnBoarded to false") {
                UserDefaults.standard.set(false, forKey: "isOnboarded")
                state.user.userState = .shouldBeOnboarded
                state.onboardingState = .state0
            }
        }
    }
}
