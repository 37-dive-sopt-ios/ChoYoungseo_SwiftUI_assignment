//
//  ArrowLabelView.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

struct ArrowLabelView: View {

    // MARK: - Properties
    
    let text: String
    let boldText: String?
    let textColor: Color

    init(
        text: String,
        boldText: String? = nil,
        textColor: Color = .baeminBlack
    ) {
        self.text = text
        self.boldText = boldText
        self.textColor = textColor
    }

    // MARK: - Body
    
    var body: some View {
        HStack(spacing: 4) {
            Text(formattedText)

            Image(.icChevronRight)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 12, height: 12)
                .foregroundStyle(textColor)
        }
    }

    // MARK: - Private Method
    
    private var formattedText: AttributedString {
        var attributed = AttributedString(text)

        attributed.foregroundColor = textColor
        attributed.font = .pretendard(.body_r_14)

        if let bold = boldText,
           let range = attributed.range(of: bold) {
            attributed[range].font = .pretendard(.head_b_14)
        }
        return attributed
    }
}
