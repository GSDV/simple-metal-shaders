//

import SwiftUI

struct ShaderExamples: View {
    private let startTime = Date()

    var body: some View {
        TimelineView(.animation) { tl in
            let currentTime = tl.date.timeIntervalSince(startTime)
            
            VStack {
                HStack(spacing: 20) {
                    Spacer()
                    IconImage(label: "Recolor", icon: "sparkles", shader: ShaderLibrary.solidPurple())
                    
                    IconImage(label: "Recolor", icon: "sparkles", shader: ShaderLibrary.invertAlpha())
    
                    IconImage(label: "Recolor", icon: "sparkles", shader: ShaderLibrary.blueRedGradient())
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ShaderExamples()
}
