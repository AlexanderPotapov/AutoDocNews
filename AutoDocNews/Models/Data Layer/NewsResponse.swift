//
//  NewsResponse.swift
//  AutoDocNews
//
//  Created by Alexander on 09.02.2025.
//

import Foundation

struct NewsResponse: Decodable {
    let news: [NewsDTO]
    let totalCount: Int
}
