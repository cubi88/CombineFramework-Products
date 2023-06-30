//
//  NetworkError.swift
//  CombineFramework
//
//  Created by Tsvetelina Cholakova on 27/06/2023.
//

import Foundation

enum NetworkError: Error{
    case invalidURL
    case parsingError
    case dataNotFound
}
extension NetworkError: LocalizedError{
    var errorDescription: String?{
        switch self{
        case .invalidURL:
            return NSLocalizedString("Invalid URL", comment: "invalid url")
        case .parsingError:
            return NSLocalizedString("Parsing Error", comment: "parsing error")
        case .dataNotFound:
            return NSLocalizedString("Data not found", comment: "data not found")
        }
    }
}
