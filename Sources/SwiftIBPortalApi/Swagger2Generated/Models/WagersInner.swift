//
// WagersInner.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** List of wagers */

public struct WagersInner: Codable {

    public var conid: Double?
    public var curr: String?
    public var desc: String?
    public var part: String?

    public init(conid: Double?, curr: String?, desc: String?, part: String?) {
        self.conid = conid
        self.curr = curr
        self.desc = desc
        self.part = part
    }


}
