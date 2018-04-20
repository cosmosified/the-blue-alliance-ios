//
// TBAEventInsights2016.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Insights for FIRST Stronghold qualification and elimination matches. */

open class TBAEventInsights2016: Codable {

    public var qual: TBAEventInsights2016Detail?
    public var playoff: TBAEventInsights2016Detail?


    
    public init(qual: TBAEventInsights2016Detail?, playoff: TBAEventInsights2016Detail?) {
        self.qual = qual
        self.playoff = playoff
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(qual, forKey: "qual")
        try container.encodeIfPresent(playoff, forKey: "playoff")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        qual = try container.decodeIfPresent(TBAEventInsights2016Detail.self, forKey: "qual")
        playoff = try container.decodeIfPresent(TBAEventInsights2016Detail.self, forKey: "playoff")
    }
}

