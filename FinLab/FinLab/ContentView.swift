//
//  ContentView.swift
//  FinLab
//
//  Created by Davit Muradyan on 16.08.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
          RoundedRectangle(cornerRadius: 30)
                .fill(.accent)
                .frame(height: 200)
                .frame(maxWidth: .infinity)
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
        
    }
}

#Preview {
    ContentView()
}
