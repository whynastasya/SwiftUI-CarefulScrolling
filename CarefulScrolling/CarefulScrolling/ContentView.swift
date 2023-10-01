//
//  ContentView.swift
//  CarefulScrolling
//
//  Created by nastasya on 01.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var rectangleHeight: CGFloat = 50
    
    var body: some View {
        TabView {
            ScrollView {
                VStack {
                    ForEach(1..<50) { item in
                        Text("Meow \(item)")
                            .font(.system(size: 22))
                            .frame(width: 350)
                            .padding()
                    }
                }
            }
            .safeAreaInset(edge: .bottom) {
                Rectangle()
                    .foregroundStyle(.red.opacity(0.6))
                    .frame(height: rectangleHeight)
            }
            .tabItem {
                VStack {
                    Image(systemName: "cat")
                    Text("Task 1")
                }
            }
        }
        .tint(.teal)
    }
}

#Preview {
    ContentView()
}
