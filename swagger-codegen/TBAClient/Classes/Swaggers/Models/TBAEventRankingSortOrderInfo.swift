//
// TBAEventRankingSortOrderInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TBAEventRankingSortOrderInfo: Codable {

    /** Name of the field used in the &#x60;sort_order&#x60; array. */
    public var name: String
    /** Integer expressing the number of digits of precision in the number provided in &#x60;sort_orders&#x60;. */
    public var precision: Int


    
    public init(name: String, precision: Int) {
        self.name = name
        self.precision = precision
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(name, forKey: "name")
        try container.encode(precision, forKey: "precision")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        name = try container.decode(String.self, forKey: "name")
        precision = try container.decode(Int.self, forKey: "precision")
    }
}

