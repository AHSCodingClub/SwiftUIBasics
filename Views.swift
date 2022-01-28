//
//  Views.swift
//  SwiftUIBasics
//
//  Created by A. Zheng (github.com/aheze) on 1/26/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//
    

import SwiftUI

struct ContentView1: View {
    var body: some View {
        Text("Hello, world!")
            .scaleEffect(3)
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

