//
// InlineResponse20030.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct InlineResponse20030: Codable {

    public var _id: String?
    /** null is returned. */
    public var tradeVenueId: String?
    /** Always contains at least one &#39;tradingTime&#39;  and zero or more &#39;sessionTime&#39; tags */
    public var schedules: [InlineResponse20030Schedules]?

    public init(_id: String?, tradeVenueId: String?, schedules: [InlineResponse20030Schedules]?) {
        self._id = _id
        self.tradeVenueId = tradeVenueId
        self.schedules = schedules
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case tradeVenueId
        case schedules
    }


}

