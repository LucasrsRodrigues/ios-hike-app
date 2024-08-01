//
//  CustomCircleView.swift
//  Hike
//
//  Created by Lucas Rodrigues on 31/07/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatedGradient: Bool = false
    
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [                        
                            .customIndigoMedium,
                            .customSalmonLight
                        ],
                        startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimatedGradient.toggle()
                    }
                }
            MotionAnimationView()
        }.frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
