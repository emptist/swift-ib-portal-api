//
// AllocationInnerGroupLong.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** long positions allocation */

public struct AllocationInnerGroupLong: Codable {

    public var computers: Double?
    public var semiconductors: Double?
    public var others: Double?
    public var chemicals: Double?
    public var apparel: Double?
    public var communications: Double?

    public init(computers: Double?, semiconductors: Double?, others: Double?, chemicals: Double?, apparel: Double?, communications: Double?) {
        self.computers = computers
        self.semiconductors = semiconductors
        self.others = others
        self.chemicals = chemicals
        self.apparel = apparel
        self.communications = communications
    }

    public enum CodingKeys: String, CodingKey { 
        case computers = "Computers"
        case semiconductors = "Semiconductors"
        case others = "Others"
        case chemicals = "Chemicals"
        case apparel = "Apparel"
        case communications = "Communications"
    }


}

