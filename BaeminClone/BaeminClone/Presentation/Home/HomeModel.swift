//
//  HomeModel.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

// MARK: - Home Sections

enum HomeSection {
    case category([HomeCategoryModel])
    case mart([HomeMartModel])
    case localRanking([HomeLocalRankingModel])
}

extension HomeSection {
    var itemCount: Int {
        switch self {
        case let .category(models): return models.count
        case let .mart(models): return models.count
        case let .localRanking(models): return models.count
        }
    }
}

// MARK: - Models

struct HomeCategoryModel: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
}

struct HomeMartModel: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
}

struct HomeLocalRankingModel: Identifiable {
    let id = UUID()
    let imageName: String
    let storeName: String
    let rating: Double
    let reviewCount: Int?
    let menuName: String
    let discountRate: Int
    let price: Int
    let originalPrice: Int
}

// MARK: - HomeModel

struct HomeModel {
    let categories: [HomeCategoryModel]
    let mart: [HomeMartModel]
    let localRanking: [HomeLocalRankingModel]
}

// MARK: - DummyData

extension HomeModel {
    static let sampleData = HomeModel(
        categories: HomeCategoryModel.dummyData,
        mart: HomeMartModel.dummyData,
        localRanking: HomeLocalRankingModel.dummyData
    )
}
