//
//  HeaderSection.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

struct HeaderSection: View {

    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            TopLocationBar()
            SearchBar()
            titleSection
        }
        .background(.baeminBackgroundWhite)
    }
}

// MARK: - Subviews

extension HeaderSection {

    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topLeading) {
                LinearGradient(
                    colors: [
                        .baeminMint100,
                        .baeminBackgroundWhite
                    ],
                    startPoint: .bottom,
                    endPoint: .center
                )
                
                VStack(alignment: .leading, spacing: 6) {
                    Image(.imgBMart)
                        .resizable()
                        .frame(width: 50, height: 16)
                    
                    HStack(spacing: 2) {
                        Text("전상품 쿠폰팩 + 60%특가")
                            .font(.pretendard(.head_b_16))
                            .foregroundColor(.baeminBlack)
                        
                        Image(.icChevronRight)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                    }
                }
                .padding(.leading, 16)
                .padding(.top, 24)
                .padding(.bottom, 27)
            }
            
            RoundedCorner(radius: 10, corners: [.topLeft, .topRight])
                .fill(.baeminWhite)
                .frame(height: 16)
                .shadow(color: .baeminMint500.opacity(0.3), radius: 4, y: -4)
        }
    }
}
