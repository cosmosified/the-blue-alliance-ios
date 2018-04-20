//
// TBAMatch.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TBAMatch: Codable {

    public enum TBACompLevel: String, Codable { 
        case qm = "qm"
        case ef = "ef"
        case qf = "qf"
        case sf = "sf"
        case f = "f"
    }
    /** TBA match key with the format &#x60;yyyy[EVENT_CODE]_[COMP_LEVEL]m[MATCH_NUMBER]&#x60;, where &#x60;yyyy&#x60; is the year, and &#x60;EVENT_CODE&#x60; is the event code of the event, &#x60;COMP_LEVEL&#x60; is (qm, ef, qf, sf, f), and &#x60;MATCH_NUMBER&#x60; is the match number in the competition level. A set number may be appended to the competition level if more than one match in required per set. */
    public var key: String
    /** The competition level the match was played at. */
    public var compLevel: TBACompLevel
    /** The set number in a series of matches where more than one match is required in the match series. */
    public var setNumber: Int
    /** The match number of the match in the competition level. */
    public var matchNumber: Int
    public var alliances: TBAMatchSimpleAlliances?
    /** The color (red/blue) of the winning alliance. Will contain an empty string in the event of no winner, or a tie. */
    public var winningAlliance: String?
    /** Event key of the event the match was played at. */
    public var eventKey: String
    /** UNIX timestamp (seconds since 1-Jan-1970 00:00:00) of the scheduled match time, as taken from the published schedule. */
    public var time: Int64?
    /** UNIX timestamp (seconds since 1-Jan-1970 00:00:00) of actual match start time. */
    public var actualTime: Int64?
    /** UNIX timestamp (seconds since 1-Jan-1970 00:00:00) of the TBA predicted match start time. */
    public var predictedTime: Int64?
    /** UNIX timestamp (seconds since 1-Jan-1970 00:00:00) when the match result was posted. */
    public var postResultTime: Int64?
    /** Score breakdown for auto, teleop, etc. points. Varies from year to year. May be null. */
    public var scoreBreakdown: Any?
    /** Array of video objects associated with this match. */
    public var videos: [TBAMatchVideos]?


    
    public init(key: String, compLevel: TBACompLevel, setNumber: Int, matchNumber: Int, alliances: TBAMatchSimpleAlliances?, winningAlliance: String?, eventKey: String, time: Int64?, actualTime: Int64?, predictedTime: Int64?, postResultTime: Int64?, scoreBreakdown: Any?, videos: [TBAMatchVideos]?) {
        self.key = key
        self.compLevel = compLevel
        self.setNumber = setNumber
        self.matchNumber = matchNumber
        self.alliances = alliances
        self.winningAlliance = winningAlliance
        self.eventKey = eventKey
        self.time = time
        self.actualTime = actualTime
        self.predictedTime = predictedTime
        self.postResultTime = postResultTime
        self.scoreBreakdown = scoreBreakdown
        self.videos = videos
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(key, forKey: "key")
        try container.encode(compLevel, forKey: "comp_level")
        try container.encode(setNumber, forKey: "set_number")
        try container.encode(matchNumber, forKey: "match_number")
        try container.encodeIfPresent(alliances, forKey: "alliances")
        try container.encodeIfPresent(winningAlliance, forKey: "winning_alliance")
        try container.encode(eventKey, forKey: "event_key")
        try container.encodeIfPresent(time, forKey: "time")
        try container.encodeIfPresent(actualTime, forKey: "actual_time")
        try container.encodeIfPresent(predictedTime, forKey: "predicted_time")
        try container.encodeIfPresent(postResultTime, forKey: "post_result_time")
        // try container.encodeIfPresent(scoreBreakdown, forKey: "score_breakdown")
        try container.encodeIfPresent(videos, forKey: "videos")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        key = try container.decode(String.self, forKey: "key")
        compLevel = try container.decode(TBACompLevel.self, forKey: "comp_level")
        setNumber = try container.decode(Int.self, forKey: "set_number")
        matchNumber = try container.decode(Int.self, forKey: "match_number")
        alliances = try container.decodeIfPresent(TBAMatchSimpleAlliances.self, forKey: "alliances")
        winningAlliance = try container.decodeIfPresent(String.self, forKey: "winning_alliance")
        eventKey = try container.decode(String.self, forKey: "event_key")
        time = try container.decodeIfPresent(Int64.self, forKey: "time")
        actualTime = try container.decodeIfPresent(Int64.self, forKey: "actual_time")
        predictedTime = try container.decodeIfPresent(Int64.self, forKey: "predicted_time")
        postResultTime = try container.decodeIfPresent(Int64.self, forKey: "post_result_time")
        // scoreBreakdown = try container.decodeIfPresent(Any.self, forKey: "score_breakdown")
        videos = try container.decodeIfPresent([TBAMatchVideos].self, forKey: "videos")
    }
}

