//
//  NewsCollectionDataSource.swift
//  AutoDocNews
//
//  Created by Alexander on 12.02.2025.
//

import UIKit

enum NewsSection {
    case main
}

typealias NewsCollectionDataSource = UICollectionViewDiffableDataSource<NewsSection, NewsSceneUIModel>
typealias NewsCollectionSnapshot = NSDiffableDataSourceSnapshot<NewsSection, NewsSceneUIModel>
