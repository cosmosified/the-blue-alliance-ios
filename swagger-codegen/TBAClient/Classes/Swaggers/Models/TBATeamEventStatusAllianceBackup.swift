//
// TBATeamEventStatusAllianceBackup.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Backup status, may be null. */

open class TBATeamEventStatusAllianceBackup: Codable {

    /** TBA key for the team replaced by the backup. */
    public var out: String?
    /** TBA key for the backup team called in. */
    public var _in: String?


    
    public init(out: String?, _in: String?) {
        self.out = out
        self._in = _in
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(out, forKey: "out")
        try container.encodeIfPresent(_in, forKey: "in")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        out = try container.decodeIfPresent(String.self, forKey: "out")
        _in = try container.decodeIfPresent(String.self, forKey: "in")
    }
}

