//
// StocksInnerContracts.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct StocksInnerContracts: Codable {

    /** conid of the stock contract */
    public var conid: Int?
    public var exchange: String?

    public init(conid: Int?, exchange: String?) {
        self.conid = conid
        self.exchange = exchange
    }


}

