//
//  Order.swift
//  OwnPodCenfotec
//
//  Created by Felipe Ramirez Vargas on 21/3/21.
//

import Foundation

class Order: ObservableObject, Codable {
    
    @Published var type = 0
    @Published var quantity = 3
    @Published var extraFosting = false
    @Published var addSprinkles = false
    @Published var name = "Gallo Pinto"
    @Published var streetAddress = ""
    @Published var city = ""
    @Published var zip = ""
    
    enum CodingKeys: CodingKey {
        case type, quantity, extraFosting, addSprinkles, name, streetAddress, city, zip
    }
    
    init() { }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try container.decode(Int.self, forKey: .type)
        quantity = try container.decode(Int.self, forKey: .quantity)
        extraFosting = try container.decode(Bool.self, forKey: .extraFosting)
        addSprinkles = try container.decode(Bool.self, forKey: .addSprinkles)
        name = try container.decode(String.self, forKey: .name)
        streetAddress = try container.decode(String.self, forKey: .streetAddress)
        city = try container.decode(String.self, forKey: .city)
        zip = try container.decode(String.self, forKey: .zip)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(type, forKey: .type)
        try container.encode(quantity, forKey: .quantity)
        try container.encode(extraFosting, forKey: .extraFosting)
        try container.encode(addSprinkles, forKey: .addSprinkles)
        try container.encode(name, forKey: .name)
        try container.encode(streetAddress, forKey: .streetAddress)
        try container.encode(city, forKey: .city)
        try container.encode(zip, forKey: .zip)
    }
    
}
