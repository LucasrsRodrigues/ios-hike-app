//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Lucas Rodrigues on 31/07/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Nil Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                            .customGrayLight
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                // A: When user pressed the Button
                // B: When the Button is not pressed
                :
                LinearGradient(
                    colors: [
                        .customGrayLight,
                            .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(40)
    }
}
