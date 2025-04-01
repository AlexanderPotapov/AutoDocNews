//
//  NetworkResponse.swift
//  AutoDocNews
//
//  Created by Alexander on 03.02.2025.
//

import Foundation

public struct NetworkResponse {
    public let statusCode: Int
    public let data: Data?

    public init(statusCode: Int, data: Data?) {
        self.statusCode = statusCode
        self.data = data
    }
}
