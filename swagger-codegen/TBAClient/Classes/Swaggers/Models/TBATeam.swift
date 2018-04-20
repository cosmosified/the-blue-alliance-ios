//
// TBATeam.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TBATeam: Codable {

    /** TBA team key with the format &#x60;frcXXXX&#x60; with &#x60;XXXX&#x60; representing the team number. */
    public var key: String
    /** Official team number issued by FIRST. */
    public var teamNumber: Int
    /** Team nickname provided by FIRST. */
    public var nickname: String?
    /** Official long name registered with FIRST. */
    public var name: String
    /** City of team derived from parsing the address registered with FIRST. */
    public var city: String?
    /** State of team derived from parsing the address registered with FIRST. */
    public var stateProv: String?
    /** Country of team derived from parsing the address registered with FIRST. */
    public var country: String?
    /** Will be NULL, for future development. */
    public var address: String?
    /** Postal code from the team address. */
    public var postalCode: String?
    /** Will be NULL, for future development. */
    public var gmapsPlaceId: String?
    /** Will be NULL, for future development. */
    public var gmapsUrl: String?
    /** Will be NULL, for future development. */
    public var lat: Double?
    /** Will be NULL, for future development. */
    public var lng: Double?
    /** Will be NULL, for future development. */
    public var locationName: String?
    /** Official website associated with the team. */
    public var website: String?
    /** First year the team officially competed. */
    public var rookieYear: Int
    /** Team&#39;s motto as provided by FIRST. */
    public var motto: String?
    /** Location of the team&#39;s home championship each year as a key-value pair. The year (as a string) is the key, and the city is the value. */
    public var homeChampionship: Any?


    
    public init(key: String, teamNumber: Int, nickname: String?, name: String, city: String?, stateProv: String?, country: String?, address: String?, postalCode: String?, gmapsPlaceId: String?, gmapsUrl: String?, lat: Double?, lng: Double?, locationName: String?, website: String?, rookieYear: Int, motto: String?, homeChampionship: Any?) {
        self.key = key
        self.teamNumber = teamNumber
        self.nickname = nickname
        self.name = name
        self.city = city
        self.stateProv = stateProv
        self.country = country
        self.address = address
        self.postalCode = postalCode
        self.gmapsPlaceId = gmapsPlaceId
        self.gmapsUrl = gmapsUrl
        self.lat = lat
        self.lng = lng
        self.locationName = locationName
        self.website = website
        self.rookieYear = rookieYear
        self.motto = motto
        self.homeChampionship = homeChampionship
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(key, forKey: "key")
        try container.encode(teamNumber, forKey: "team_number")
        try container.encodeIfPresent(nickname, forKey: "nickname")
        try container.encode(name, forKey: "name")
        try container.encodeIfPresent(city, forKey: "city")
        try container.encodeIfPresent(stateProv, forKey: "state_prov")
        try container.encodeIfPresent(country, forKey: "country")
        try container.encodeIfPresent(address, forKey: "address")
        try container.encodeIfPresent(postalCode, forKey: "postal_code")
        try container.encodeIfPresent(gmapsPlaceId, forKey: "gmaps_place_id")
        try container.encodeIfPresent(gmapsUrl, forKey: "gmaps_url")
        try container.encodeIfPresent(lat, forKey: "lat")
        try container.encodeIfPresent(lng, forKey: "lng")
        try container.encodeIfPresent(locationName, forKey: "location_name")
        try container.encodeIfPresent(website, forKey: "website")
        try container.encode(rookieYear, forKey: "rookie_year")
        try container.encodeIfPresent(motto, forKey: "motto")
        // try container.encodeIfPresent(homeChampionship, forKey: "home_championship")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        key = try container.decode(String.self, forKey: "key")
        teamNumber = try container.decode(Int.self, forKey: "team_number")
        nickname = try container.decodeIfPresent(String.self, forKey: "nickname")
        name = try container.decode(String.self, forKey: "name")
        city = try container.decodeIfPresent(String.self, forKey: "city")
        stateProv = try container.decodeIfPresent(String.self, forKey: "state_prov")
        country = try container.decodeIfPresent(String.self, forKey: "country")
        address = try container.decodeIfPresent(String.self, forKey: "address")
        postalCode = try container.decodeIfPresent(String.self, forKey: "postal_code")
        gmapsPlaceId = try container.decodeIfPresent(String.self, forKey: "gmaps_place_id")
        gmapsUrl = try container.decodeIfPresent(String.self, forKey: "gmaps_url")
        lat = try container.decodeIfPresent(Double.self, forKey: "lat")
        lng = try container.decodeIfPresent(Double.self, forKey: "lng")
        locationName = try container.decodeIfPresent(String.self, forKey: "location_name")
        website = try container.decodeIfPresent(String.self, forKey: "website")
        rookieYear = try container.decode(Int.self, forKey: "rookie_year")
        motto = try container.decodeIfPresent(String.self, forKey: "motto")
        // homeChampionship = try container.decodeIfPresent(Any.self, forKey: "home_championship")
    }
}

