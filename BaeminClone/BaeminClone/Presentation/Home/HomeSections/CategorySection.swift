//
//  CategorySection.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

struct CategorySection: View {

    // MARK: - Properties
    
    let categories: [HomeCategoryModel]

    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            menuTab
            Divider().background(.baeminGray200)
            categoryView
            Divider().background(.baeminBackgroundWhite)
            foodDeliveryMoreButton
        }
        .background(.white)
    }

    // MARK: - Subviews
    
    private var menuTab: some View {
        VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 14) {
                    Text("음식배달")
                        .font(.pretendard(.head_b_18))
                        .foregroundColor(.baeminBlack)

                    Text("픽업")
                        .font(.pretendard(.title_sb_18))
                        .foregroundColor(.baeminGray300)

                    Text("장보기·쇼핑")
                        .font(.pretendard(.title_sb_18))
                        .foregroundColor(.baeminGray300)

                    Text("선물하기")
                        .font(.pretendard(.title_sb_18))
                        .foregroundColor(.baeminGray300)

                    Text("혜택모아보기")
                        .font(.pretendard(.title_sb_18))
                        .foregroundColor(.baeminGray300)
                }
                .padding(.leading, 16)
                .padding(.bottom, 14)
            }
        }
        .background(.baeminWhite)
    }

    private let rows = [
        GridItem(.fixed(78), spacing: 12),
        GridItem(.fixed(78), spacing: 12)
    ]

    private var categoryView: some View {
        LazyHGrid(rows: rows) {
            ForEach(categories) { item in
                CategoryItemView(model: item)
            }
        }
        .padding(.horizontal, 16)
        .padding(.top, 12)
        .padding(.bottom, 21)
    }

    private var foodDeliveryMoreButton: some View {
        ZStack {
            Color.white
            
            ArrowLabelView(
                text: "음식배달에서 더보기",
                boldText: "음식배달",
                textColor: .baeminBlack
            )
        }
        .padding(.vertical, 10)
        .frame(height: 34)
    }
}
