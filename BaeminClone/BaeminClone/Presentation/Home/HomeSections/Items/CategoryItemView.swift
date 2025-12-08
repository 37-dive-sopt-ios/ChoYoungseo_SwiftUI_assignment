//
//  CategoryItemView.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

struct CategoryItemView: View {
    
    // MARK: - Properties

    let model: HomeCategoryModel

    var body: some View {
        VStack(spacing: 6) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.baeminBackgroundWhite)
                    .frame(width: 58, height: 58)

                Image(model.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
            }

            Text(model.title)
                .font(.pretendard(.body_r_14))
                .foregroundColor(.baeminBlack)
        }
        .frame(width: 65)
    }
}
