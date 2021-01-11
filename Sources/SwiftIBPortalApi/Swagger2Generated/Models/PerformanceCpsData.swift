//
// PerformanceCpsData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PerformanceCpsData: Codable {

    public var _id: String?
    /** for example-- acctid */
    public var idType: String?
    /** start date-- yyyyMMdd */
    public var start: String?
    public var baseCurrency: String?
    /** each value stands for price change percent of corresponding date in dates array */
    public var returns: [Double]?
    /** end date-- yyyyMMdd */
    public var end: String?

    public init(_id: String?, idType: String?, start: String?, baseCurrency: String?, returns: [Double]?, end: String?) {
        self._id = _id
        self.idType = idType
        self.start = start
        self.baseCurrency = baseCurrency
        self.returns = returns
        self.end = end
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case idType
        case start
        case baseCurrency
        case returns
        case end
    }


}
