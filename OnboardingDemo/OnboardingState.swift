//
//  OnboardingState.swift
//  OnboardingDemo
//
//  Created by Merouane Bellaha on 08/11/2020.
//

import Foundation

enum OnboardingState: Int, CaseIterable {

    case state0 = 0
    case state1 = 1
    case state2 = 2
    case state3 = 3

    func nextState() -> OnboardingState {
        return OnboardingState(rawValue: rawValue + 1) ?? OnboardingState.state0
    }

    func previousState() -> OnboardingState {
        return OnboardingState(rawValue: rawValue - 1) ?? OnboardingState.state0
    }

    var title: String {
        switch self {
        case .state0:
            return rawValue.description
        case .state1:
            return rawValue.description
        case .state2:
            return rawValue.description
        case .state3:
            return "Go"
        }
    }
}
