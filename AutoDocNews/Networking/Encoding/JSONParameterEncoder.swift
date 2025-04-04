//
//  JSONParameterEncoder.swift
//  AutoDocNews
//
//  Created by Alexander on 03.02.2025.
//

import Foundation

public struct JSONParameterEncoder: ParameterEncoder {
    public func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        do {
            let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = jsonAsData
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }

        } catch {
            throw ParameterEncodingError.jsonEncodingFailed(error)
        }
    }
}
