//
//  LoginView.swift
//  FinLab
//
//  Created by Davit Muradyan on 17.08.25.
//

import SwiftUI
import Lottie

struct LoginView: View {
    @State private var userName = ""
    @State private var passPin = ""
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ScrollView {
                    VStack {
                        Text("Welcome to FinLab")
                            .foregroundStyle(.accent)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .fontDesign(.rounded)
                        
                        LottieView(animation: .named("LottieFile.json"))
                            .playbackMode(.playing(.toProgress(1, loopMode: .loop)))
                            .frame(height: 300)
                            .frame(maxWidth: .infinity)
                            .background(.thickMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .padding()
                            .shadow(color: .black.opacity(0.3), radius: 5)
                        
                        Group {
                            TextField("Email", text: $userName)
                                .frame(height: 20)
                                .frame(maxWidth: .infinity)
                                .padding()
                            
                            SecureField("Pin", text: $passPin)
                                .keyboardType(.numberPad)
                                .frame(height: 20)
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 7)
                                .stroke(.secondary.opacity(0.5), lineWidth: 1)
                        )
                        .padding(.horizontal)
                        
                        NavigationLink("Log in") {
                            RootView()
                        }
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(.accent)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                        .padding(.horizontal)
                    }
                    .frame(minHeight: geometry.size.height)
                    .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
