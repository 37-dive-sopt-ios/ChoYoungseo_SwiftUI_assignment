//
//  BannerSection.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

struct BannerSection: View {

    // MARK: - Properties
    
    private let images = ["img_banner_1", "img_banner_2", "img_banner_3"]

    // MARK: - Body
    
    var body: some View {
        GeometryReader { geo in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(images, id: \.self) { name in
                        Image(name)
                            .resizable()
                            .scaledToFill()
                            .frame(width: geo.size.width)
                            .clipped()
                    }
                }
            }
            .scrollTargetBehavior(.paging)
        }
        .frame(height: 114)
    }
}
