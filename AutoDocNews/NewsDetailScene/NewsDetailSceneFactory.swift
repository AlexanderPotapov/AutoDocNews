//
//  NewsDetailSceneFactory.swift
//  AutoDocNews
//
//  Created by Alexander on 09.02.2025.
//

import UIKit

protocol NewsDetailSceneFactoryProtocol {
    func makeDetailNewsScene(with detailNews: DetailNewsSceneUIModel) -> UIViewController
}

final class NewsDetailSceneFactory: NewsDetailSceneFactoryProtocol {
    func makeDetailNewsScene(with detailNews: DetailNewsSceneUIModel) -> UIViewController {
        let viewController = NewsDetailSceneViewController(deatilNews: detailNews)
        return viewController
    }
}
