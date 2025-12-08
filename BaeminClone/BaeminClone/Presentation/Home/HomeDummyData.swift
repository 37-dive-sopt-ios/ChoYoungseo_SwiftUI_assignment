//
//  HomeDummyData.swift
//  BaeminClone
//
//  Created by 조영서 on 12/8/25.
//

import SwiftUI

// MARK: - Category

extension HomeCategoryModel {
    static let dummyData: [HomeCategoryModel] = [
        HomeCategoryModel(title: "한그릇", imageName: "img_category_1"),
        HomeCategoryModel(title: "치킨", imageName: "img_category_2"),
        HomeCategoryModel(title: "카페·디저트", imageName: "img_category_3"),
        HomeCategoryModel(title: "피자", imageName: "img_category_4"),
        HomeCategoryModel(title: "분식", imageName: "img_category_5"),
        HomeCategoryModel(title: "고기", imageName: "img_category_6"),
        HomeCategoryModel(title: "찜·탕", imageName: "img_category_7"),
        HomeCategoryModel(title: "야식", imageName: "img_category_8"),
        HomeCategoryModel(title: "패스트푸드", imageName: "img_category_9"),
        HomeCategoryModel(title: "픽업", imageName: "img_category_10")
    ]
}

// MARK: - Mart

extension HomeMartModel {
    static let dummyData: [HomeMartModel] = [
        HomeMartModel(title: "B마트", imageName: "img_mart_1"),
        HomeMartModel(title: "CU", imageName: "img_mart_2"),
        HomeMartModel(title: "이마트슈퍼", imageName: "img_mart_3"),
        HomeMartModel(title: "홈플러스", imageName: "img_mart_4"),
        HomeMartModel(title: "GS25", imageName: "img_mart_5"),
        HomeMartModel(title: "이마트", imageName: "img_mart_6"),
        HomeMartModel(title: "코스트코", imageName: "img_mart_7")
    ]
}

// MARK: - LocalRanking

extension HomeLocalRankingModel {
    static let dummyData: [HomeLocalRankingModel] = [
        HomeLocalRankingModel(
            imageName: "img_bossam",
            storeName: "백억보쌈제육",
            rating: 5.0,
            reviewCount: 1973,
            menuName: "[든든한 한끼] 보쌈 막국수",
            discountRate: 20,
            price: 9600,
            originalPrice: 12000
        ),
        HomeLocalRankingModel(
            imageName: "img_hotdog",
            storeName: "명랑핫도그",
            rating: 4.7,
            reviewCount: 842,
            menuName: "(1인) 피자 + 사이드 Set",
            discountRate: 15,
            price: 2550,
            originalPrice: 3000
        ),
        HomeLocalRankingModel(
            imageName: "img_hongkongbanjum",
            storeName: "홍콩반점0410",
            rating: 4.8,
            reviewCount: 1203,
            menuName: "짜장면 + 탕수육 세트",
            discountRate: 10,
            price: 10800,
            originalPrice: 12000
        ),
        HomeLocalRankingModel(
            imageName: "img_domino",
            storeName: "도미노피자",
            rating: 4.9,
            reviewCount: 4512,
            menuName: "포테이토 피자 L + 콜라",
            discountRate: 25,
            price: 17900,
            originalPrice: 23900
        ),
        HomeLocalRankingModel(
            imageName: "img_bbq",
            storeName: "BBQ치킨",
            rating: 4.6,
            reviewCount: 3271,
            menuName: "황올 + 치즈볼 세트",
            discountRate: 12,
            price: 17800,
            originalPrice: 20300
        ),
        HomeLocalRankingModel(
            imageName: "img_sinjeon",
            storeName: "신전떡볶이",
            rating: 4.8,
            reviewCount: 2649,
            menuName: "떡볶이 + 튀김 + 순대",
            discountRate: 18,
            price: 7900,
            originalPrice: 9600
        )
    ]
}

// MARK: - Dummy List

extension HomeSection {
    static var dummy: [HomeSection] {
        [
            .mart(HomeMartModel.dummyData),
            .category(HomeCategoryModel.dummyData),
            .localRanking(HomeLocalRankingModel.dummyData),
        ]
    }
}
