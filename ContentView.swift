import SwiftUI

struct Page: Identifiable {
    let id = UUID()
    var image: String?
    var title: String?
    var scale: CGFloat?
    var view: AnyView

    init<Content: View>(
        image: String? = nil,
        title: String? = nil,
        scale: CGFloat? = nil,
        @ViewBuilder view: () -> Content
    ) {
        self.image = image
        self.title = title
        self.scale = scale
        self.view = AnyView(view())
    }
}

struct ContentView: View {
    @State var selectedIndex = 12
    let pages: [Page] = [
        Page(image: "Padding", title: ".padding", scale: 1.2) {
            PaddingView()
        },
        Page(image: "Background", title: ".background", scale: 1.5) {
            BackgroundView()
        },
        Page(image: "Font", title: ".font", scale: 1.5) {
            FontView()
        },
        Page(image: "Opacity", title: ".opacity", scale: 1.5) {
            OpacityView()
        },
        Page(image: "ForegroundColor", title: ".foregroundColor", scale: 1.5) {
            ForegroundColorView()
        },
        Page(image: "Corner", title: ".cornerRadius", scale: 1.5) {
            CornerRadiusView()
        },
        Page(image: "Frame", title: ".frame", scale: 1.5) {
            FrameView()
        },
    ]

    @State var selectedPage: Page?
    var body: some View {
        ScrollView {
            Text("SwiftUI Modifiers")
                .font(.system(size: 100, weight: .medium, design: .monospaced))
                .foregroundColor(.purple)
            Text("You can apply these to any View, including `Text`, `Image`, `VStack`, and `HStack`.")
                .font(.system(size: 50))

            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 300))],
                spacing: 16
            ) {
                ForEach(pages) { page in
                    Button {
                        selectedPage = page
                    } label: {
                        VStack(spacing: 16) {
                            Text(page.title ?? "")
                                .font(.title)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(
                                    Color.purple
                                )

                            page.view
                                .scaleEffect(page.scale ?? 1)
                                .frame(height: 200)
                                .padding()
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color(uiColor: .systemBackground))
                        .cornerRadius(16)
                    }
                    .foregroundColor(.primary)
                }
            }
            .padding()
        }
        .background(Color(uiColor: .secondarySystemBackground))
        .fullScreenCover(item: $selectedPage) { page in
            VStack(alignment: .trailing) {
                Button {
                    selectedPage = nil
                } label: {
                    Text("Done")
                        .padding()
                }

                if let image = page.image {
                    page.view.addContainer(image: image, title: page.title ?? "")
                } else {
                    page.view
                }
            }
        }
    }
}

extension View {
    func erased() -> AnyView {
        AnyView(self)
    }
}
