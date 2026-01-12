import SwiftUI

extension View {
    @ViewBuilder
    func applyIfLet<T, Content: View>(
        _ value: T?,
        transform: (Self, T) -> Content
    ) -> some View {
        if let value {
            transform(self, value)
        } else {
            self
        }
    }
}

struct IconImage: View {
    let label: String
    let icon: String
    var colorEffect: Shader? = nil
    var distortionEffect: Shader? = nil

    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 100))
                .foregroundStyle(.blue)
                .applyIfLet(colorEffect) { view, shader in
                    view.colorEffect(shader)
                }
                .padding(5)
                .background(.white)
                .drawingGroup()
                .applyIfLet(distortionEffect) { view, shader in
                    view.distortionEffect(shader, maxSampleOffset: CGSize(width: 10, height: 10))
                }

            Text(label)
        }
    }
}
