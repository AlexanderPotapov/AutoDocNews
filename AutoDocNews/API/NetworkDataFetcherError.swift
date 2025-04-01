//
//  NetworkDataFetcherError.swift
//  AutoDocNews
//
//  Created by Alexander on 10.02.2025.
//

import Foundation

enum NetworkDataFetcherError: Error {
    case noData
    case imageAlreadyLoading
    case decodingError(Error)
    case badStatusCode(statusCode: Int)
}
