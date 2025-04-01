//
//  URLParameterEncoder.swift
//  AutoDocNews
//
//  Created by Alexander on 03.02.2025.
//

import Foundation

public struct URLParameterEncoder: ParameterEncoder {
    public func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        guard let url = urlRequest.url else {
            throw ParameterEncodingError.invalidURL
        }

        // Проверяем, что параметры не пустые
        guard !parameters.isEmpty else { return }

        // Пытаемся создать URL с параметрами
        guard var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
            throw ParameterEncodingError.urlEncodingFailed
        }

        urlComponents.queryItems = parameters.map { key, value in
            URLQueryItem(
                name: key,
                value: "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
            )
        }

        // Проверяем, удалось ли создать URL после кодирования параметров
        guard let encodedURL = urlComponents.url else {
            throw ParameterEncodingError.urlEncodingFailed
        }
        urlRequest.url = encodedURL

        // Устанавливаем заголовок, если он не задан
        if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
            urlRequest.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
        }
    }
}
