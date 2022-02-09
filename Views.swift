//
//  Views.swift
//  SwiftUIBasics
//
//  Created by A. Zheng (github.com/aheze) on 1/26/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import SwiftUI

struct BasicView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")

            HStack {
                Image(systemName: "star.fill")
                Text("This is a star")
            }
        }
    }
}

struct PaddingView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .border(.blue)

            Text("Hello, world!")
                .padding(60)
                .border(.blue)
        }
    }
}

struct BackgroundView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")

            Text("Hello, world!")
                .background(Color.yellow)

            Text("Hello, world!")
                .background(
                    HStack(spacing: 0) {
                        Color.red
                        Color.green
                        Color.blue
                    }
                )
        }
    }
}

struct FontView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")

            Text("Hello, world!")
                .font(.largeTitle)
        }
    }
}

struct ForegroundColorView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")

            Text("Hello, world!")
                .foregroundColor(.green)
        }
    }
}

struct OpacityView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")

            Text("Hello, world!")
                .opacity(0.5)
        }
    }
}

struct CornerRadiusView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .background(Color.green)

            Text("Hello, world!")
                .background(Color.green)
                .cornerRadius(8)
        }
    }
}

struct FrameView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .border(.red)

            Text("Hello, world!")
                .frame(width: 40, height: 30)
                .border(.red)

            Text("Hello, world!")
                .frame(maxWidth: .infinity)
                .border(.red)
        }
    }
}

struct ChallengeView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Coding Club")
                Image(systemName: "star.fill")
                Text("Group 1")
            }
            .foregroundColor(.blue)
            .padding(24)
            .frame(maxWidth: .infinity)
            .background(Color.blue.opacity(0.2))
            .background(Color.white)
            

            VStack {
                HStack {
                    Text("Question:")
                        .bold()
                    Text("Why did the chicken cross the road?")
                }

                HStack {
                    Text("Answer")
                        .bold()
                    Text("TODO")
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.3))
            .cornerRadius(16)
            .padding()

            VStack {
                Text("Members:")
                    .bold()

                Text("Andrew")
                Text("Harris")
                Text("Clement")
                Text("Krishna")
                Text("Tyler")
                Text("Isaac")
                Text("Ariel")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.3))
            .cornerRadius(16)
            .padding()
        }
        .foregroundColor(.white)
        .background(.blue)
        .cornerRadius(16)
    }
}

struct ContentView2: View {
    var body: some View {
        Image("HEHEHAHA")
    }
}

struct ContentView3: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .scaleEffect(3)
            Image("HEHEHAHA")
        }
    }
}

struct ContentView4: View {
    var body: some View {
        HStack {
            Image(systemName: "dice")

            VStack {
                Text("Hello, world!")
                    .scaleEffect(3)
                Image("HEHEHAHA")
            }
        }
    }
}

struct ContentView5: View {
    var body: some View {
        HStack {
            Image(systemName: "dice")
                .font(Font.system(size: 100))

            VStack {
                Text("Hello, world!")
                    .scaleEffect(3)
                Image("HEHEHAHA")
            }
        }
    }
}

struct ContentView6: View {
    var body: some View {
        HStack {
            Image(systemName: "dice")
                .font(Font.system(size: 100))
                .foregroundColor(.black)
                .background(Color.blue)

            VStack {
                Text("Hello, world!")
                    .scaleEffect(3)
                Image("HEHEHAHA")
            }
        }
    }
}

struct ContentView7: View {
    var body: some View {
        HStack {
            Image(systemName: "dice")
                .font(Font.system(size: 100))
                .padding(50)
                .foregroundColor(Color.white)
                .background(Color.blue)

            VStack {
                Text("Hello, world!")
                    .scaleEffect(3)
                Image("HEHEHAHA")
            }
        }
    }
}

struct ContentView8: View {
    var body: some View {
        HStack {
            Image(systemName: "person")
                .padding(10)
                .foregroundColor(Color.white)
                .background(Color.green)
                .cornerRadius(12)
                .foregroundColor(.white)

            VStack {
                Text("Hello!")
                    .font(Font.system(size: 15))
                    .foregroundColor(Color.black)

                Text("My name is _______")
                    .font(Font.system(size: 15))
                    .foregroundColor(Color.black)
            }
        }
        .scaleEffect(3)
    }
}

struct ContentView9: View {
    var body: some View {
        VStack {
            Text("Choose.")

            HStack {
                Image(systemName: "person")
                    .padding(10)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(12)

                Image(systemName: "dice")
                    .padding(10)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .cornerRadius(12)
            }
        }
        .scaleEffect(3)
    }
}
