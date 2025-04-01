//
//  NetworkResponse + URLResponse.swift
//  AutoDocNews
//
//  Created by Alexander on 03.02.2025.
//

import Foundation

// Расширение для инициализации из URLResponse
public extension NetworkResponse {
    init?(response: URLResponse, data: Data?) {
        guard let httpResponse = response as? HTTPURLResponse else {
            return nil
        }
        self.statusCode = httpResponse.statusCode
        self.data = data
    }
}
