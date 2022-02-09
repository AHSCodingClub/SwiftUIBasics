import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 12
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                switch selectedIndex {
                case 1:
                    Slide {
                        Text("Views")
                            .font(.system(size: 100))
                            .foregroundColor(.blue)
                    }
                case 2:
                    BasicView().scaleEffect(1.5).addContainer(image: "Basic", title: "Basic Views")
                case 3:
                    Slide {
                        Text("Modifiers")
                            .font(.system(size: 100))
                            .foregroundColor(.purple)
                    }
                case 4: PaddingView().scaleEffect(1.5).addContainer(image: "Padding", title: ".padding")
                case 5: BackgroundView().scaleEffect(1.5).addContainer(image: "Background", title: ".background")
                case 6: FontView().scaleEffect(1.5).addContainer(image: "Font", title: ".font")
                case 7: OpacityView().scaleEffect(1.5).addContainer(image: "Opacity", title: ".opacity")
                case 8: ForegroundColorView().scaleEffect(1.5).addContainer(image: "ForegroundColor", title: ".foregroundColor")
                case 9: CornerRadiusView().scaleEffect(1.5).addContainer(image: "Corner", title: ".cornerRadius")
                case 10: FrameView().addContainer(image: "Frame", title: ".frame")
                case 11:
                    Text("Challenge")
                        .font(.system(size: 200))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            LinearGradient(
                                colors: [.blue, .green],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .cornerRadius(32)
                        .padding(64)
                case 12:
                    ChallengeView()
                        .frame(width: 500)
                        .scaleEffect(2)
                default: Color.gray
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)

            HStack {
                Group {
                    Button {
                        if selectedIndex >= 1 {
                            selectedIndex -= 1
                        }
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.largeTitle.bold())
                            .frame(width: 60, height: 60)
                            .background(Color(uiColor: .systemBackground))
                            .cornerRadius(30)
                    }

                    Text("Slide #\(selectedIndex)")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity)

                    Button {
                        selectedIndex += 1
                    } label: {
                        Image(systemName: "chevron.right")
                            .font(.largeTitle.bold())
                            .frame(width: 60, height: 60)
                            .background(Color(uiColor: .systemBackground))
                            .cornerRadius(30)
                    }
                }
            }
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(Color(uiColor: .secondarySystemBackground))
        }
    }
}
