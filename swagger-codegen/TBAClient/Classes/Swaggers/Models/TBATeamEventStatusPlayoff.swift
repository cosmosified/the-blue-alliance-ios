//
// TBATeamEventStatusPlayoff.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Playoff status for this team, may be null if the team did not make playoffs, or playoffs have not begun. */

open class TBATeamEventStatusPlayoff: Codable {

    public enum TBALevel: String, Codable { 
        case qm = "qm"
        case ef = "ef"
        case qf = "qf"
        case sf = "sf"
        case f = "f"
    }
    public enum TBAStatus: String, Codable { 
        case won = "won"
        case eliminated = "eliminated"
        case playing = "playing"
    }
    /** The highest playoff level the team reached. */
    public var level: TBALevel?
    public var currentLevelRecord: TBAWLTRecord?
    public var record: TBAWLTRecord?
    /** Current competition status for the playoffs. */
    public var status: TBAStatus?
    /** The average match score during playoffs. Year specific. May be null if not relevant for a given year. */
    public var playoffAverage: Int?


    
    public init(level: TBALevel?, currentLevelRecord: TBAWLTRecord?, record: TBAWLTRecord?, status: TBAStatus?, playoffAverage: Int?) {
        self.level = level
        self.currentLevelRecord = currentLevelRecord
        self.record = record
        self.status = status
        self.playoffAverage = playoffAverage
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(level, forKey: "level")
        try container.encodeIfPresent(currentLevelRecord, forKey: "current_level_record")
        try container.encodeIfPresent(record, forKey: "record")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeIfPresent(playoffAverage, forKey: "playoff_average")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        level = try container.decodeIfPresent(TBALevel.self, forKey: "level")
        currentLevelRecord = try container.decodeIfPresent(TBAWLTRecord.self, forKey: "current_level_record")
        record = try container.decodeIfPresent(TBAWLTRecord.self, forKey: "record")
        status = try container.decodeIfPresent(TBAStatus.self, forKey: "status")
        playoffAverage = try container.decodeIfPresent(Int.self, forKey: "playoff_average")
    }
}

