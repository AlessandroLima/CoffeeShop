//
//  MockURLSessionData.swift
//  CoffeeShop
//
//  Created by Alessandro Teixeira Lima on 22/01/25.
//

import Foundation

struct MockURLSessionData: URLSessionProtocolData {
    var dataResult: (Data, URLResponse)?
    var errorResult: Error?

    func data(from url: URL) async throws -> (Data, URLResponse) {
        if let error = errorResult {
            throw error
        }
        guard let dataResult = dataResult else {
            fatalError("You must set dataResult for MockURLSession")
        }
        return dataResult
    }
}
