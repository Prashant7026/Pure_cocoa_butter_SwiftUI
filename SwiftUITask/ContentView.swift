//
//  ContentView.swift
//  SwiftUITask
//
//  Created by Prashant Kumar Soni on 08/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var pureCocoaButterViewButtonTapped: Bool = false
    
    var body: some View {
        NavigationStack {
            Button {
                pureCocoaButterViewButtonTapped.toggle()
            } label: {
                Text("Tap Me!")
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(8.0)
            }
            .navigationDestination(isPresented: $pureCocoaButterViewButtonTapped) {
                PureCocoaButterView()
            }
        }
        .accentColor(Color.blue)
    }
}

#Preview {
    ContentView()
}
