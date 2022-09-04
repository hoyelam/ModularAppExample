//
//  RandomJokeResponse.swift
//  
//
//  Created by Hoye Lam on 04/09/2022.
//

import Foundation

public struct RandomJokeResponse: Codable {
    let categories: [String]
    let createdAt: String
    let iconUrl: String
    let id: String
    let updatedAt: String
    let url: String
    let value: String
    
    enum CodingKeys: String, CodingKey {
        case categories
        case createdAt = "created_at"
        case iconUrl = "icon_url"
        case id
        case updatedAt = "updated_at"
        case url
        case value
    }
}
