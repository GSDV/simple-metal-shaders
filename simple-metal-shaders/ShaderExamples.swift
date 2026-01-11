//

import SwiftUI

struct ShaderExamples: View {
    private let startTime = Date()

    var body: some View {
        TimelineView(.animation) { tl in
            let currentTime = tl.date.timeIntervalSince(startTime)
            
            VStack(spacing: 10) {
                HStack(alignment: .bottom) {
                    Spacer()
                    IconImage(
                        label: "Recolor",
                        icon: "sparkles",
                        colorShader: ShaderLibrary.solidPurple()
                    )
                    
                    IconImage(
                        label: "Invert Alpha",
                        icon: "sparkles",
                        colorShader: ShaderLibrary.invertAlpha()
                    )
    
                    IconImage(
                        label: "Gradient",
                        icon: "figure.walk.circle",
                        colorShader: ShaderLibrary.blueRedGradient()
                    )
                    Spacer()
                }

                HStack(alignment: .bottom) {
                    Spacer()
                    IconImage(
                        label: "Spin",
                        icon: "figure.walk.circle",
                        colorShader: ShaderLibrary.spinningDividerLine(.boundingRect, .float(currentTime))
                    )
                    
                    IconImage(
                        label: "Gradient Spin",
                        icon: "trash.circle.fill",
                        colorShader: ShaderLibrary.spinningGradient(.boundingRect, .float(currentTime))
                    )
                    
                    IconImage(
                        label: "Rainbow",
                        icon: "questionmark.app",
                        colorShader: ShaderLibrary.rainbowFlash(.boundingRect, .float(currentTime))
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
