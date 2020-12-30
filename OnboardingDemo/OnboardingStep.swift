//
//  OnboardingStep.swift
//  OnboardingDemo
//
//  Created by Merouane Bellaha on 08/11/2020.
//

import Foundation

enum OnboardingStep: Int, CaseIterable {

    case step0 = 0
    case step1 = 1
    case step2 = 2
    case step3 = 3

    var isFirstStep: Bool { rawValue == 0 }
    var isLastStep: Bool { rawValue == OnboardingStep.allCases.count - 1 }

    mutating func nextStep() {
        self = OnboardingStep(rawValue: rawValue + 1).orDefaultStep
    }

    mutating func previousStep() {
        self = OnboardingStep(rawValue: rawValue - 1).orDefaultStep
    }

    var title: String {
        switch self {
        case .step0:
            return "step 0"
        case .step1:
            return "step 1"
        case .step2:
            return "step 2"
        case .step3:
            return "Go"
        }
    }
}

extension Optional where Wrapped == OnboardingStep {
    var orDefaultStep: OnboardingStep { self ?? .step0 }
}
