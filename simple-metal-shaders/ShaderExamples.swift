//

import SwiftUI

struct ShaderExamples: View {
    private let startTime = Date()

    var body: some View {
        TimelineView(.animation) { tl in
            let currentTime = tl.date.timeIntervalSince(startTime)
            
            VStack(spacing: 15) {
                HStack(alignment: .bottom) {
                    Spacer()
                    IconImage(
                        label: "Recolor",
                        icon: "sparkles",
                        colorEffect: ShaderLibrary.solidPurple()
                    )
                    
                    IconImage(
                        label: "Invert Alpha",
                        icon: "sparkles",
                        colorEffect: ShaderLibrary.invertAlpha()
                    )
    
                    IconImage(
                        label: "Gradient",
                        icon: "figure.walk.circle",
                        colorEffect: ShaderLibrary.blueRedGradient()
                    )
                    Spacer()
                }

                HStack(alignment: .bottom) {
                    Spacer()
                    IconImage(
                        label: "Spin",
                        icon: "figure.walk.circle",
                        colorEffect: ShaderLibrary.spinningDividerLine(.boundingRect, .float(currentTime))
                    )
                    
                    IconImage(
                        label: "Gradient Spin",
                        icon: "trash.circle.fill",
                        colorEffect: ShaderLibrary.spinningGradient(.boundingRect, .float(currentTime))
                    )
                    
                    IconImage(
                        label: "Rainbow",
                        icon: "questionmark.app",
                        colorEffect: ShaderLibrary.rainbowFlash(.boundingRect, .float(currentTime))
                    )
                    Spacer()
                }

                HStack(alignment: .bottom) {
                    Spacer()
                    IconImage(
                        label: "Rainbow 2",
                        icon: "person.fill",
                        colorEffect: ShaderLibrary.rainbowFlash2(.boundingRect, .float(currentTime))
                    )
                    
                    IconImage(
                        label: "Wave",
                        icon: "figure.pool.swim.circle.fill",
                        distortionEffect: ShaderLibrary.waterWave(.float(currentTime))
                    )
                    
                    IconImage(
                        label: "Flag",
                        icon: "square.fill",
                        distortionEffect: ShaderLibrary.flagWave(.boundingRect, .float(currentTime))
                    )
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ShaderExamples()
}
