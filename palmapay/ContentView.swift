import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            AssetName.onboardAsset.image
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .ignoresSafeArea(.all)

            VStack {
                HStack {
                    AssetName.icon.image.resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(.leading)
                    Spacer()
                }
                Spacer()
            }
            .padding(.top, 30)
            .padding(.leading, 25)

            VStack(spacing: 20) {
                AssetName.collectingHands.image
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity) // Make the image full-width

                BenefitText(text: "puts the power in your palm!")

                // Full-width HStack to align the button to the right
                HStack {
                    Spacer()
                    Button(action: {
                        print("CLICKED")
                    }) {
                        Image(systemName: "arrow.right")
                            .font(.system(size: 24, weight: .medium))
                            .foregroundColor(.primary)
                            .padding(8)
                            .background(Color.white.opacity(0.33))
                            .clipShape(Circle())
                    }
                }
            }
            .padding(.horizontal, 20) // Apply padding for consistent margins
        }
    }
}

struct BenefitText: View {
    var text: String

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .bottom, spacing: 5) {
                Text("palma.pay")
                    .font(CustomFont.regular.font(size: 41))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(BrandColors.mainOrange.color)
                    .cornerRadius(5)
                    .shadow(color: .black, radius: 0, x: 3, y: 3)

                Text(text.split(separator: " ").first ?? "put")
                    .fontWeight(.regular)
                    .font(CustomFont.regular.font(size: 41))
            }

            Text(
                text.split(separator: " ").dropFirst().joined(separator: " ")
            )
            .font(CustomFont.regular.font(size: 41))
        }
    }
}

struct SizedBox: View {
    var width: CGFloat = 0
    var height: CGFloat = 0

    var body: some View {
        Color.clear.frame(width: width, height: height)
    }
}

#Preview {
    ContentView().background(Color.accentColor)
}
