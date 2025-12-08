//
//  MartItemView.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

struct MartItemView: View {

    // MARK: - Properties
    
    let model: HomeMartModel

    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 6) {

            Image(model.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 62, height: 62)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .clipped()

            Text(model.title)
                .font(.pretendard(.body_r_14))
                .foregroundColor(.baeminBlack)
                .lineLimit(1)
        }
        .frame(width: 62)
    }
}
