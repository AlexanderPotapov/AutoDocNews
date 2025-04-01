//
//  EndPointType.swift
//  AutoDocNews
//
//  Created by Alexander on 03.02.2025.
//

import Foundation

public protocol EndPointType {
    var baseURL: String { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
}
