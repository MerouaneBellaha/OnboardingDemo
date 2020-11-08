//
//  HomeView.swift
//  OnboardingDemo
//
//  Created by Merouane Bellaha on 08/11/2020.
//

import Foundation

struct HomeView: View {

    // MARK: - Properties

    @EnvironmentObject var state: AppState

    // MARK: - Body

    var body: some View {
        Button("logout") {
            state.user.userState = .shouldLogin
        }
    }
}
