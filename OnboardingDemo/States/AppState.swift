//
//  AppState.swift
//  OnboardingDemo
//
//  Created by Merouane Bellaha on 08/11/2020.
//

import Foundation

struct User {

    enum UserState {
        case shouldBeOnboarded, shouldLogin, isLogin
    }

    var state: UserState = .shouldBeOnboarded
}

class AppState: ObservableObject {

    // MARK: - Published Properties

    @Published var user: User! = nil
    @Published var onboardingState: OnboardingState = .state0

    // MARK: - Init

    init() {
        user = User()
        user.state = getUserState()
    }

    // MARK: - Methods

    func getUserState() -> User.UserState {
        if !UserDefaults.standard.bool(forKey: "isOnboarded") { return .shouldBeOnboarded }
        if user == nil { return .shouldLogin }
        return .isLogin
    }
}
