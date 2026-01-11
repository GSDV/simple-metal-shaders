import SwiftUI

struct IconImage: View {
    let label: String
    let icon: String
    let colorShader: Shader

    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 100))
                .foregroundStyle(.blue)
                .colorEffect(colorShader)
                .padding(5)
                .background(.white)
                .drawingGroup()

            Text(label)

        }
    }
}
