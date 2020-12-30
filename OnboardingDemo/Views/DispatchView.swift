//
//  DispatchView.swift
//  OnboardingDemo
//
//  Created by Merouane Bellaha on 08/11/2020.
//

import Foundation

import SwiftUI

struct DispatchView: View {

    // MARK: - Properties

    @EnvironmentObject var state: AppState

    // MARK: - Body

    var body: some View {
        switch state.user.state {
        case .shouldBeOnboarded :
            return AnyView(OnboardingView().environmentObject(state))
        case .shouldLogin :
            return AnyView(LogInView().environmentObject(state))
        case .isLogin :
            return AnyView(HomeView().environmentObject(state))
        }
    }
}
