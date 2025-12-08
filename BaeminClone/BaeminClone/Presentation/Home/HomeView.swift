//
//  HomeView.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

struct HomeView: View {

    // MARK: - Properties
    
    @StateObject private var viewModel = HomeViewModel()

    // MARK: - Body
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                
                HeaderSection()

                CategorySection(categories: viewModel.categories)

                SpacerView

                MartSection(martItems: viewModel.mart)

                SpacerView

                BannerSection()

                SpacerView

                LocalRankingSection(items: viewModel.localRanking)
            }
        }
        .background(.baeminBackgroundWhite)        
    }
}

// MARK: - Subviews

extension HomeView {
    private var SpacerView: some View {
        Rectangle()
            .fill(.baeminBackgroundWhite)
            .frame(height: 10)
    }
}
