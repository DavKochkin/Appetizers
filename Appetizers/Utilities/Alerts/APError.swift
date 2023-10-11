//
//  APError.swift
//  Appetizers
//
//  Created by David Kochkin on 05.10.2023.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete 
}
