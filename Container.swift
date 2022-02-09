//
//  Container.swift
//  SwiftUIBasics
//
//  Created by A. Zheng (github.com/aheze) on 2/2/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import SwiftUI

struct Container: ViewModifier {
    let image: String
    let title: String

    @State var showingImage = true
    @State var showingResult = false

    init(
        image: String,
        title: String,
        showingImage: Bool,
        showingResult: Bool
    ) {
        self.image = image
        self.title = title
        self._showingImage = State(initialValue: showingImage)
        self._showingResult = State(initialValue: showingResult)
    }

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
                    VStack(alignment: .leading) {
                        Text(title)
                            .font(.system(size: 60, design: .monospaced))
                            .foregroundColor(.purple)
                            .padding()
                        
                        Image(image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .opacity(showingImage ? 1 : 0)
                    }
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
                        .frame(width: 360)
                        .scaleEffect(1.5)
                        .opacity(showingResult ? 1 : 0)
                )
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(uiColor: .systemBackground))
                .cornerRadius(24)
            }
            .buttonStyle(.plain)
        }
        .padding()
        .background(Color(uiColor: .secondarySystemBackground))
    }
}

struct Slide<Content: View>: View {
    @ViewBuilder let content: Content
    var body: some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(uiColor: .systemBackground))
            .cornerRadius(24)
    }
}

extension View {
    func addContainer(image: String, title: String, showingImage: Bool = true, showingResult: Bool = true) -> some View {
        modifier(
            Container(
                image: image,
                title: title,
                showingImage: showingImage,
                showingResult: showingResult
            )
        )
    }
}
