//
//  MainTabView.swift
//  BaeminClone
//
//  Created by 조영서 on 12/9/25.
//

import SwiftUI

struct MainTabView: View {
    
    // MARK: - Properties
    
    @State private var selectedIndex: Int = 0
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 0) {
            
            selectedContentView
            CustomTabBar(selectedIndex: $selectedIndex)
        }
        .ignoresSafeArea(.keyboard)
    }
}

// MARK: - Subviews

extension MainTabView {
    
    private var selectedContentView: some View {
        Group {
            switch selectedIndex {
            case 0:
                HomeView()
            case 1:
                Color.red.ignoresSafeArea()
            case 2:
                Color.orange.ignoresSafeArea()
            case 3:
                Color.yellow.ignoresSafeArea()
            case 4:
                Color.green.ignoresSafeArea()
            default:
                EmptyView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
