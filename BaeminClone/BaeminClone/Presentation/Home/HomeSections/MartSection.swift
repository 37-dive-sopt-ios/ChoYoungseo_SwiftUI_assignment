//
//  MartSection.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

struct MartSection: View {
    
    // MARK: - Properties
    
    let martItems: [HomeMartModel]
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 9) {
                ForEach(martItems) { item in
                    MartItemView(model: item)
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(.white)
    }
}
