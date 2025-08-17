//
//  RootView.swift
//  FinLab
//
//  Created by Davit Muradyan on 16.08.25.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                Text("Hello")
            }
            Tab("Exchange", systemImage: "repeat") {
                Text("Hello")
            }
            Tab("Send", systemImage: "arrow.right") {
                Text("Hello")
            }
            Tab("Settings", systemImage: "gearshape") {
                Text("Hello")
            }
        }
        .tint(.accent)
    }
}

#Preview {
    RootView()
}
