import SwiftUI


struct RoundedButton: View {
    var title: String

    var body: some View {
        Text(title)
            .font(.system(size: 30, weight: .light))
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding(10)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
            .background(Color.primaryApp)
            .cornerRadius(20)
    }
}

