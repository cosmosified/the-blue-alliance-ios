//
// TBAMatchTimeseries2018.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Timeseries data for the 2018 game *FIRST* POWER UP. *WARNING:* This is *not* official data, and is subject to a significant possibility of error, or missing data. Do not rely on this data for any purpose. In fact, pretend we made it up. *WARNING:* This model is currently under active development and may change at any time, including in breaking ways. */

open class TBAMatchTimeseries2018: Codable {

    /** TBA event key with the format yyyy[EVENT_CODE], where yyyy is the year, and EVENT_CODE is the event code of the event. */
    public var eventKey: String?
    /** Match ID consisting of the level, match number, and set number, eg &#x60;qm45&#x60; or &#x60;f1m1&#x60;. */
    public var matchId: String?
    /** Current mode of play, can be &#x60;pre_match&#x60;, &#x60;auto&#x60;, &#x60;telop&#x60;, or &#x60;post_match&#x60;. */
    public var mode: String?
    public var play: Int?
    /** Amount of time remaining in the match, only valid during &#x60;auto&#x60; and &#x60;teleop&#x60; modes. */
    public var timeRemaining: Int?
    /** 1 if the blue alliance is credited with the AUTO QUEST, 0 if not. */
    public var blueAutoQuest: Int?
    /** Number of POWER CUBES in the BOOST section of the blue alliance VAULT. */
    public var blueBoostCount: Int?
    /** Returns 1 if the blue alliance BOOST was played, or 0 if not played. */
    public var blueBoostPlayed: Int?
    /** Name of the current blue alliance POWER UP being played, or &#x60;null&#x60;. */
    public var blueCurrentPowerup: String?
    /** 1 if the blue alliance is credited with FACING THE BOSS, 0 if not. */
    public var blueFaceTheBoss: Int?
    /** Number of POWER CUBES in the FORCE section of the blue alliance VAULT. */
    public var blueForceCount: Int?
    /** Returns 1 if the blue alliance FORCE was played, or 0 if not played. */
    public var blueForcePlayed: Int?
    /** Number of POWER CUBES in the LEVITATE section of the blue alliance VAULT. */
    public var blueLevitateCount: Int?
    /** Returns 1 if the blue alliance LEVITATE was played, or 0 if not played. */
    public var blueLevitatePlayed: Int?
    /** Number of seconds remaining in the blue alliance POWER UP time, or 0 if none is active. */
    public var bluePowerupTimeRemaining: String?
    /** 1 if the blue alliance owns the SCALE, 0 if not. */
    public var blueScaleOwned: Int?
    /** Current score for the blue alliance. */
    public var blueScore: Int?
    /** 1 if the blue alliance owns their SWITCH, 0 if not. */
    public var blueSwitchOwned: Int?
    /** 1 if the red alliance is credited with the AUTO QUEST, 0 if not. */
    public var redAutoQuest: Int?
    /** Number of POWER CUBES in the BOOST section of the red alliance VAULT. */
    public var redBoostCount: Int?
    /** Returns 1 if the red alliance BOOST was played, or 0 if not played. */
    public var redBoostPlayed: Int?
    /** Name of the current red alliance POWER UP being played, or &#x60;null&#x60;. */
    public var redCurrentPowerup: String?
    /** 1 if the red alliance is credited with FACING THE BOSS, 0 if not. */
    public var redFaceTheBoss: Int?
    /** Number of POWER CUBES in the FORCE section of the red alliance VAULT. */
    public var redForceCount: Int?
    /** Returns 1 if the red alliance FORCE was played, or 0 if not played. */
    public var redForcePlayed: Int?
    /** Number of POWER CUBES in the LEVITATE section of the red alliance VAULT. */
    public var redLevitateCount: Int?
    /** Returns 1 if the red alliance LEVITATE was played, or 0 if not played. */
    public var redLevitatePlayed: Int?
    /** Number of seconds remaining in the red alliance POWER UP time, or 0 if none is active. */
    public var redPowerupTimeRemaining: String?
    /** 1 if the red alliance owns the SCALE, 0 if not. */
    public var redScaleOwned: Int?
    /** Current score for the red alliance. */
    public var redScore: Int?
    /** 1 if the red alliance owns their SWITCH, 0 if not. */
    public var redSwitchOwned: Int?


    
    public init(eventKey: String?, matchId: String?, mode: String?, play: Int?, timeRemaining: Int?, blueAutoQuest: Int?, blueBoostCount: Int?, blueBoostPlayed: Int?, blueCurrentPowerup: String?, blueFaceTheBoss: Int?, blueForceCount: Int?, blueForcePlayed: Int?, blueLevitateCount: Int?, blueLevitatePlayed: Int?, bluePowerupTimeRemaining: String?, blueScaleOwned: Int?, blueScore: Int?, blueSwitchOwned: Int?, redAutoQuest: Int?, redBoostCount: Int?, redBoostPlayed: Int?, redCurrentPowerup: String?, redFaceTheBoss: Int?, redForceCount: Int?, redForcePlayed: Int?, redLevitateCount: Int?, redLevitatePlayed: Int?, redPowerupTimeRemaining: String?, redScaleOwned: Int?, redScore: Int?, redSwitchOwned: Int?) {
        self.eventKey = eventKey
        self.matchId = matchId
        self.mode = mode
        self.play = play
        self.timeRemaining = timeRemaining
        self.blueAutoQuest = blueAutoQuest
        self.blueBoostCount = blueBoostCount
        self.blueBoostPlayed = blueBoostPlayed
        self.blueCurrentPowerup = blueCurrentPowerup
        self.blueFaceTheBoss = blueFaceTheBoss
        self.blueForceCount = blueForceCount
        self.blueForcePlayed = blueForcePlayed
        self.blueLevitateCount = blueLevitateCount
        self.blueLevitatePlayed = blueLevitatePlayed
        self.bluePowerupTimeRemaining = bluePowerupTimeRemaining
        self.blueScaleOwned = blueScaleOwned
        self.blueScore = blueScore
        self.blueSwitchOwned = blueSwitchOwned
        self.redAutoQuest = redAutoQuest
        self.redBoostCount = redBoostCount
        self.redBoostPlayed = redBoostPlayed
        self.redCurrentPowerup = redCurrentPowerup
        self.redFaceTheBoss = redFaceTheBoss
        self.redForceCount = redForceCount
        self.redForcePlayed = redForcePlayed
        self.redLevitateCount = redLevitateCount
        self.redLevitatePlayed = redLevitatePlayed
        self.redPowerupTimeRemaining = redPowerupTimeRemaining
        self.redScaleOwned = redScaleOwned
        self.redScore = redScore
        self.redSwitchOwned = redSwitchOwned
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(eventKey, forKey: "event_key")
        try container.encodeIfPresent(matchId, forKey: "match_id")
        try container.encodeIfPresent(mode, forKey: "mode")
        try container.encodeIfPresent(play, forKey: "play")
        try container.encodeIfPresent(timeRemaining, forKey: "time_remaining")
        try container.encodeIfPresent(blueAutoQuest, forKey: "blue_auto_quest")
        try container.encodeIfPresent(blueBoostCount, forKey: "blue_boost_count")
        try container.encodeIfPresent(blueBoostPlayed, forKey: "blue_boost_played")
        try container.encodeIfPresent(blueCurrentPowerup, forKey: "blue_current_powerup")
        try container.encodeIfPresent(blueFaceTheBoss, forKey: "blue_face_the_boss")
        try container.encodeIfPresent(blueForceCount, forKey: "blue_force_count")
        try container.encodeIfPresent(blueForcePlayed, forKey: "blue_force_played")
        try container.encodeIfPresent(blueLevitateCount, forKey: "blue_levitate_count")
        try container.encodeIfPresent(blueLevitatePlayed, forKey: "blue_levitate_played")
        try container.encodeIfPresent(bluePowerupTimeRemaining, forKey: "blue_powerup_time_remaining")
        try container.encodeIfPresent(blueScaleOwned, forKey: "blue_scale_owned")
        try container.encodeIfPresent(blueScore, forKey: "blue_score")
        try container.encodeIfPresent(blueSwitchOwned, forKey: "blue_switch_owned")
        try container.encodeIfPresent(redAutoQuest, forKey: "red_auto_quest")
        try container.encodeIfPresent(redBoostCount, forKey: "red_boost_count")
        try container.encodeIfPresent(redBoostPlayed, forKey: "red_boost_played")
        try container.encodeIfPresent(redCurrentPowerup, forKey: "red_current_powerup")
        try container.encodeIfPresent(redFaceTheBoss, forKey: "red_face_the_boss")
        try container.encodeIfPresent(redForceCount, forKey: "red_force_count")
        try container.encodeIfPresent(redForcePlayed, forKey: "red_force_played")
        try container.encodeIfPresent(redLevitateCount, forKey: "red_levitate_count")
        try container.encodeIfPresent(redLevitatePlayed, forKey: "red_levitate_played")
        try container.encodeIfPresent(redPowerupTimeRemaining, forKey: "red_powerup_time_remaining")
        try container.encodeIfPresent(redScaleOwned, forKey: "red_scale_owned")
        try container.encodeIfPresent(redScore, forKey: "red_score")
        try container.encodeIfPresent(redSwitchOwned, forKey: "red_switch_owned")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        eventKey = try container.decodeIfPresent(String.self, forKey: "event_key")
        matchId = try container.decodeIfPresent(String.self, forKey: "match_id")
        mode = try container.decodeIfPresent(String.self, forKey: "mode")
        play = try container.decodeIfPresent(Int.self, forKey: "play")
        timeRemaining = try container.decodeIfPresent(Int.self, forKey: "time_remaining")
        blueAutoQuest = try container.decodeIfPresent(Int.self, forKey: "blue_auto_quest")
        blueBoostCount = try container.decodeIfPresent(Int.self, forKey: "blue_boost_count")
        blueBoostPlayed = try container.decodeIfPresent(Int.self, forKey: "blue_boost_played")
        blueCurrentPowerup = try container.decodeIfPresent(String.self, forKey: "blue_current_powerup")
        blueFaceTheBoss = try container.decodeIfPresent(Int.self, forKey: "blue_face_the_boss")
        blueForceCount = try container.decodeIfPresent(Int.self, forKey: "blue_force_count")
        blueForcePlayed = try container.decodeIfPresent(Int.self, forKey: "blue_force_played")
        blueLevitateCount = try container.decodeIfPresent(Int.self, forKey: "blue_levitate_count")
        blueLevitatePlayed = try container.decodeIfPresent(Int.self, forKey: "blue_levitate_played")
        bluePowerupTimeRemaining = try container.decodeIfPresent(String.self, forKey: "blue_powerup_time_remaining")
        blueScaleOwned = try container.decodeIfPresent(Int.self, forKey: "blue_scale_owned")
        blueScore = try container.decodeIfPresent(Int.self, forKey: "blue_score")
        blueSwitchOwned = try container.decodeIfPresent(Int.self, forKey: "blue_switch_owned")
        redAutoQuest = try container.decodeIfPresent(Int.self, forKey: "red_auto_quest")
        redBoostCount = try container.decodeIfPresent(Int.self, forKey: "red_boost_count")
        redBoostPlayed = try container.decodeIfPresent(Int.self, forKey: "red_boost_played")
        redCurrentPowerup = try container.decodeIfPresent(String.self, forKey: "red_current_powerup")
        redFaceTheBoss = try container.decodeIfPresent(Int.self, forKey: "red_face_the_boss")
        redForceCount = try container.decodeIfPresent(Int.self, forKey: "red_force_count")
        redForcePlayed = try container.decodeIfPresent(Int.self, forKey: "red_force_played")
        redLevitateCount = try container.decodeIfPresent(Int.self, forKey: "red_levitate_count")
        redLevitatePlayed = try container.decodeIfPresent(Int.self, forKey: "red_levitate_played")
        redPowerupTimeRemaining = try container.decodeIfPresent(String.self, forKey: "red_powerup_time_remaining")
        redScaleOwned = try container.decodeIfPresent(Int.self, forKey: "red_scale_owned")
        redScore = try container.decodeIfPresent(Int.self, forKey: "red_score")
        redSwitchOwned = try container.decodeIfPresent(Int.self, forKey: "red_switch_owned")
    }
}

