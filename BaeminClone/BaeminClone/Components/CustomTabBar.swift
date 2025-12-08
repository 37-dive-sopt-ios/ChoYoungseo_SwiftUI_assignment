//
//  CustomTabBar.swift
//  BaeminClone
//
//  Created by 조영서 on 12/9/25.
//

import SwiftUI

// MARK: - Main View

struct CustomTabBar: View {
    
    // MARK: - Properties
    
    @Binding var selectedIndex: Int
    
    private let tabItems: [(icon: String, fill: String, title: String)] = [
        ("ic_home", "ic_home_fill", "홈"),
        ("ic_shopping", "ic_shopping_fill", "장보기·쇼핑"),
        ("ic_heart", "ic_heart_fill", "찜"),
        ("ic_order", "ic_order_fill", "주문내역"),
        ("ic_face", "ic_face_fill", "마이배민")
    ]
    
    // MARK: - Body
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(tabItems.indices, id: \.self) { index in
                tabItem(index: index)
            }
        }
        .padding(.horizontal, 16)
        .frame(height: 60)
        .background(.baeminWhite)
    }
}

// MARK: - Subviews

extension CustomTabBar {
    
    @ViewBuilder
    private func tabItem(index: Int) -> some View {
        let isSelected = selectedIndex == index
        
        VStack(spacing: 5) {
            Image(isSelected ? tabItems[index].fill : tabItems[index].icon)
                .resizable()
                .frame(width: 24, height: 24)
            
            Text(tabItems[index].title)
                .font(isSelected ? .pretendard(.title_sb_10) : .pretendard(.body_r_10))
                .foregroundColor(isSelected ? .baeminBlack : .baeminGray700)
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.15)) {
                selectedIndex = index
            }
        }
    }
}
