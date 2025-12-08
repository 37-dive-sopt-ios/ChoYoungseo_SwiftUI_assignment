//
//  HomeViewModel.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

final class HomeViewModel: ObservableObject {

    // MARK: - Properties
    
    @Published var categories: [HomeCategoryModel] = []
    @Published var mart: [HomeMartModel] = []
    @Published var localRanking: [HomeLocalRankingModel] = []

    // MARK: - Init
    
    init() {
        loadDummyData()
    }

    // MARK: - Private Method
    
    private func loadDummyData() {
        categories = HomeModel.sampleData.categories
        mart = HomeModel.sampleData.mart
        localRanking = HomeModel.sampleData.localRanking
    }
}
