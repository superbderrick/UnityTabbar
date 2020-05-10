//
//  LoginRequest.swift
//  TrailerTV
//
//  Created by derrick on 2020/05/10.
//  Copyright © 2020 Derrick. All rights reserved.
//

import Foundation

struct LoginRequest: Codable {
    
    let username: String
    let password: String
    let requestToken: String
    
    enum CodingKeys: String, CodingKey {
        case username
        case password
        case requestToken = "request_token"
    }
}
