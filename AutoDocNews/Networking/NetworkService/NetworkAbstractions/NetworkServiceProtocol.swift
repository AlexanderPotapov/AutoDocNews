//
//  NetworkServiceProtocol.swift
//  AutoDocNews
//
//  Created by Alexander on 03.02.2025.
//
import Foundation

public protocol NetworkServiceProtocol {
    associatedtype EndPoint: EndPointType
    func request(_ rout: EndPoint) async throws -> NetworkResponse
    func simpleRequest(from urlString: String) async throws -> NetworkResponse
}
