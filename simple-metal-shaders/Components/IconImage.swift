import SwiftUI

struct IconImage: View {
    let label: String
    let icon: String
    let shader: Shader

    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 100))
                .foregroundStyle(.blue)
                .colorEffect(shader)

            Text(label)

        }
    }
}
