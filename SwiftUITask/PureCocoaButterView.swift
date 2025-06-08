//
//  PureCocoaButterView.swift
//  SwiftUITask
//
//  Created by Prashant Kumar Soni on 08/06/25.
//

import SwiftUI

struct PureCocoaButterView: View {
    
    var body: some View {
        VStack(spacing: 10.0) {
            
            topView()
            
            Divider()
                .padding(.vertical, 10.0)
            
            bottomTextView()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Pure Cocoa Butter")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func topView() -> some View {
        Group {
            Image("checkIcon")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Pure cocoa Butter")
                .font(.title)
                .bold()
            Text("Guarantees a better quality chocolate")
                .foregroundColor(Color.gray)
        }
    }
    
    private func bottomTextView() -> some View {
        Group {
            Text("Why is it important?")
                .bold()
            Text("Cocoa butter is obtained from cocoa beans: it guarantees better a quality chocolate.\nUnfortunately, some manufacturers use less expensive fats such as palm oil or shea butter which is better to avoid.")
        }
    }
}

#Preview {
    PureCocoaButterView()
}
