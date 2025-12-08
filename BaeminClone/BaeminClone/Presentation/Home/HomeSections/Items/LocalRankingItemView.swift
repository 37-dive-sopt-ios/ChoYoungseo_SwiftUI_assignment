//
//  LocalRankingItemView.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

struct LocalRankingItemView: View {
    
    // MARK: - Properties

    let model: HomeLocalRankingModel

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: 9) {

            Image(model.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 145, height: 145)
                .clipShape(RoundedRectangle(cornerRadius: 8))

            VStack(alignment: .leading, spacing: 6) {

                HStack(spacing: 5) {
                    Text(model.storeName)
                        .font(.pretendard(.body_r_12))
                        .foregroundColor(.baeminGray600)
                        .lineLimit(1)

                    HStack(spacing: 2) {
                        Image(.icStar)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.baeminYellow)
                            .frame(width: 11, height: 10)

                        Text(String(format: "%.1f", model.rating))
                            .font(.pretendard(.body_r_12))
                            .foregroundColor(.baeminGray600)
                    }

                    Text("(\(model.reviewCount ?? 0))")
                        .font(.pretendard(.body_r_12))
                        .foregroundColor(.baeminGray600)
                }

                Text(model.menuName)
                    .font(.pretendard(.body_r_14))
                    .foregroundColor(.baeminBlack)
                    .lineLimit(1)

                HStack(spacing: 6) {
                    Text("\(model.discountRate)%")
                        .font(.pretendard(.head_b_14))
                        .foregroundColor(.baeminRed)

                    Text(formatPrice(model.price))
                        .font(.pretendard(.head_b_14))
                        .foregroundColor(.baeminBlack)
                }

                Text(formatPrice(model.originalPrice))
                    .font(.pretendard(.body_r_12))
                    .foregroundColor(.baeminGray600)
                    .strikethrough()

                Text("최소주문금액 없음")
                    .font(.pretendard(.head_b_13))
                    .foregroundColor(.baeminBluePurple700)
            }
        }
        .frame(width: 145)
    }

    private func formatPrice(_ value: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return "\(formatter.string(from: NSNumber(value: value)) ?? "\(value)")원"
    }
}
