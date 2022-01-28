import SwiftUI

struct Container: ViewModifier {
    let image: String

    @State var showingImage = true
    @State var showingResult = false
    
    func body(content: Content) -> some View {
        HStack {
            Button {
                withAnimation {
                    showingImage.toggle()
                }
            } label: {
                LinearGradient(
                    colors: [.blue, .green],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .opacity(showingImage ? 0 : 1)
                .overlay(
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .opacity(showingImage ? 1 : 0)
                )
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(uiColor: .systemBackground))
                .cornerRadius(24)
            }

            Button {
                withAnimation {
                    showingResult.toggle()
                }
            } label: {
                LinearGradient(
                    colors: [.red, .yellow],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .opacity(showingResult ? 0 : 1)
                .overlay(
                    content
                        .opacity(showingResult ? 1 : 0)
                )
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(uiColor: .systemBackground))
                .cornerRadius(24)
            }
        }
        .padding()
        .background(Color(uiColor: .secondarySystemBackground))
    }
}

extension View {
    func addContainer(image: String) -> some View {
        modifier(Container(image: image))
    }
}

struct ContentView: View {
    @State var selectedIndex = 1
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                switch selectedIndex {
                case 1: ContentView1().addContainer(image: "1")
                case 2: ContentView2().addContainer(image: "2")
                case 3: ContentView3().addContainer(image: "3")
                case 4: ContentView4().addContainer(image: "4")
                case 5: ContentView5().addContainer(image: "5")
                case 6: ContentView6().addContainer(image: "6")
                case 7: ContentView7().addContainer(image: "7")
                case 8: ContentView8().addContainer(image: "8")
                case 9: ContentView9().addContainer(image: "9")
                    
                default: Color.gray
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)

            HStack {
                Group {
                    Button {
                        if selectedIndex >= 2 {
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
                        if selectedIndex <= 10 {
                            selectedIndex += 1
                        }
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
