//
// This source file is part of the Stronger based on the Stanford Spezi Template Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SpeziOnboarding
import SwiftUI


struct Welcome: View {
    @Environment(OnboardingNavigationPath.self) private var onboardingNavigationPath
    
    
    var body: some View {
        OnboardingView(
            title: "WELCOME_TITLE",
            subtitle: "WELCOME_SUBTITLE",
            areas: [
                OnboardingInformationView.Content(
                    icon: {
                        Image(systemName: "fork.knife")
                            .accessibilityHidden(true)
                    },
                    title: "WELCOME_AREA1_TITLE",
                    description: "WELCOME_AREA1_DESCRIPTION"
                ),
                OnboardingInformationView.Content(
                    icon: {
                        Image(systemName: "figure.strengthtraining.functional")
                            .accessibilityHidden(true)
                    },
                    title: "WELCOME_AREA2_TITLE",
                    description: "WELCOME_AREA2_DESCRIPTION"
                )
//                OnboardingInformationView.Content(
//                    icon: {
//                        Image(systemName: "figure.run")
//                            .accessibilityHidden(true)
//                    },
//                    title: "WELCOME_AREA3_TITLE",
//                    description: "WELCOME_AREA3_DESCRIPTION"
//                ),
//                OnboardingInformationView.Content(
//                    icon: {
//                        Image(systemName: "list.bullet.clipboard.fill")
//                            .accessibilityHidden(true)
//                    },
//                    title: "WELCOME_AREA4_TITLE",
//                    description: "WELCOME_AREA4_DESCRIPTION"
//                )
            ],
            actionText: "WELCOME_BUTTON",
            action: {
                onboardingNavigationPath.nextStep()
            }
        )
            .padding(.top, 10)
    }
}


#if DEBUG
#Preview {
    OnboardingStack {
        Welcome()
    }
}
#endif
