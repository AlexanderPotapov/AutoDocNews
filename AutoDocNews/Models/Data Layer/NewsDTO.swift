//
//  News.swift
//  AutoDocNews
//
//  Created by Alexander on 03.02.2025.
//

import Foundation

struct NewsDTO: Decodable, Identifiable {
    let id: Int
    let title: String
    let description: String
    let publishedDate: String
    let titleImageURL: String?

    private enum CodingKeys: String, CodingKey {
        case id, title, description, publishedDate
        case titleImageURL = "titleImageUrl"
    }
}
