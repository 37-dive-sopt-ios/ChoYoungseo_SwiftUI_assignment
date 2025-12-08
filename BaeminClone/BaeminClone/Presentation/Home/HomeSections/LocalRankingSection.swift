//
//  LocalRankingSection.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

struct LocalRankingSection: View {

    // MARK: - Properties
    
    let items: [HomeLocalRankingModel]

    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            header
            localRankingView
        }
        .padding(.top, 24)
        .padding(.bottom, 16)
        .background(
            LinearGradient(
                colors: [
                    .baeminBluePurple500,
                    .baeminWhite
                ],
                startPoint: .top,
                endPoint: .center
            )
        )
    }

    // MARK: - Subviews
    
    private var header: some View {
        HStack {
            HStack(spacing: 3) {
                Text("우리 동네 한그릇 인기 랭킹")
                    .font(.pretendard(.title_sb_18))
                    .foregroundColor(.white)

                Image(.icInfo)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 16, height: 16)
            }

            Spacer()

            ArrowLabelView(text: "전체보기", textColor: .white)
        }
        .padding(.horizontal, 16)
    }

    private var localRankingView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(items) { item in
                    LocalRankingItemView(model: item)
                }
            }
            .padding(.horizontal, 16)
        }
    }
}
