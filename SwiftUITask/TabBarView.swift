//
//  TabBarView.swift
//  SwiftUITask
//
//  Created by Prashant Kumar Soni on 08/06/25.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab: Int = 3
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                switch selectedTab {
                case 0: Text("History").bold()
                case 1: Text("Recs").bold()
                case 2: Text("Scan").bold()
                case 3: ContentView()
                default: Text("Search").bold()
                }
            }
            
            Spacer()
            
            Divider()
            
            HStack {
                tabBarItem(index: 0, label: "History", systemImage: "historyIcon", tint: .green, isAssetImage: true)
                tabBarItem(index: 1, label: "Recs", systemImage: "arrow.left.arrow.right.circle", tint: .green)
                tabBarItem(index: 2, label: "Scan", systemImage: "barcode.viewfinder", tint: .green)
                tabBarItem(index: 3, label: "Top", systemImage: "list.star", tint: .green)
                tabBarItem(index: 4, label: "Search", systemImage: "magnifyingglass", tint: .green)
            }
            .frame(height: 60)
            .background(.ultraThinMaterial)
        }
    }
    
    func tabBarItem(index: Int, label: String, systemImage: String, tint: Color, isAssetImage: Bool = false) -> some View {
        Button {
            selectedTab = index
        } label: {
            VStack {
                Group {
                    if isAssetImage {
                        Image(systemImage)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(selectedTab == index ? tint : .black)
                    } else {
                        Image(systemName: systemImage)
                            .resizable()
                            .foregroundColor(selectedTab == index ? tint : .gray)
                    }
                }
                .frame(width: 25, height: 25)
                Text(label)
                    .foregroundColor(selectedTab == index ? tint : .gray)
                    .font(.caption)
            }
            .padding(.top, 8)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    TabBarView()
}
