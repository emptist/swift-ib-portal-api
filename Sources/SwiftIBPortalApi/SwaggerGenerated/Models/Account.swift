//
// Account.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** account information */

public struct Account: Codable {

    public var _id: String?
    public var accountId: String?
    public var accountVan: String?
    public var accountTitle: String?
    public var displayName: String?
    public var accountAlias: String?
    public var accountStatus: Double?
    public var currency: String?
    public var type: String?
    public var tradingType: String?
    public var faclient: Bool?
    public var parent: String?
    public var desc: String?
    public var covestor: Bool?
    public var master: AccountMaster?

    public init(_id: String?, accountId: String?, accountVan: String?, accountTitle: String?, displayName: String?, accountAlias: String?, accountStatus: Double?, currency: String?, type: String?, tradingType: String?, faclient: Bool?, parent: String?, desc: String?, covestor: Bool?, master: AccountMaster?) {
        self._id = _id
        self.accountId = accountId
        self.accountVan = accountVan
        self.accountTitle = accountTitle
        self.displayName = displayName
        self.accountAlias = accountAlias
        self.accountStatus = accountStatus
        self.currency = currency
        self.type = type
        self.tradingType = tradingType
        self.faclient = faclient
        self.parent = parent
        self.desc = desc
        self.covestor = covestor
        self.master = master
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case accountId
        case accountVan
        case accountTitle
        case displayName
        case accountAlias
        case accountStatus
        case currency
        case type
        case tradingType
        case faclient
        case parent
        case desc
        case covestor
        case master
    }


}

