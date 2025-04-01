//
//  NetworkDataFetcherProtocol.swift
//  AutoDocNews
//
//  Created by Alexander on 10.02.2025.
//

import Foundation

protocol NetworkDataFetcherProtocol {
    func getNews(currentPage: Int, pageSize: Int) async throws -> NewsResponse
    func fetchImageData(urlString: String) async throws -> Data
    func cancelLoadingImageData(urlString: String)
    func cancelLoadingQueryData()
}
