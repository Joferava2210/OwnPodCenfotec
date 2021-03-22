//
//  TokenResponse.swift
//  OwnPodCenfotec
//
//  Created by Felipe Ramirez Vargas on 21/3/21.
//

import Foundation

class TokenResponse: Decodable, ObservableObject {
   
    @Published var token = ""
    
    enum CodingKeys: CodingKey {
        case token
    }
    
    init() {}
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        token = try container.decode(String.self, forKey: .token)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(token, forKey: .token)
    }
    
}


