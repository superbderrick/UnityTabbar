//
//  RequestTokenResponse.swift
//  TrailerTV
//
//  Created by derrick on 2020/05/10.
//  Copyright © 2020 Derrick. All rights reserved.
//

import Foundation

struct RequestTokenResponse: Codable {
    
    let success: Bool
    let expiresAt: String
    let requestToken: String
    
    enum CodingKeys: String, CodingKey {
        case success
        case expiresAt = "expires_at"
        case requestToken = "request_token"
    }
}
