//
// HistoryData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct HistoryData: Codable {

    /** Underlying Symbol of the corresponding contract */
    public var symbol: String?
    /** companyName of the corresponding contract */
    public var text: String?
    /** priceFactor is price increment obtained from display rule */
    public var priceFactor: Int?
    /** start date time in the format YYYYMMDD-HH:mm:ss */
    public var startTime: String?
    /** High value during this time series with format %h/%v/%t. %h is the high price (scaled by priceFactor), %v is volume (volume factor will always be 100 (reported volume &#x3D; actual volume/100)) and %t is minutes from start time of the chart  */
    public var high: String?
    /** Low value during this time series with format %l/%v/%t. %l is the low price (scaled by priceFactor), %v is volume (volume factor will always be 100 (reported volume &#x3D; actual volume/100)) and %t is minutes from start time of the chart  */
    public var low: String?
    /** The duration for the historical data request */
    public var timePeriod: String?
    /** The number of seconds in a bar */
    public var barLength: Int?
    /** Market Data Availability. The field may contain two chars. The first char is the primary code: S &#x3D; Streaming, R &#x3D; Realtime, D &#x3D; Delayed, Z &#x3D; Frozen, Y &#x3D; Frozen Delayed. The second char is the secondary code: P &#x3D; Snapshot Available, p &#x3D; Consolidated.  */
    public var mdAvailability: String?
    /** The time it takes, in milliseconds, to process the historical data request */
    public var mktDataDelay: Int?
    /** The historical data returned includes outside of regular trading hours  */
    public var outsideRth: Bool?
    /** The number of seconds in the trading day */
    public var tradingDayDuration: Int?
    public var volumeFactor: Int?
    public var priceDisplayRule: Int?
    public var priceDisplayValue: String?
    public var negativeCapable: Bool?
    public var messageVersion: Int?
    public var data: [HistorydataData]?
    /** total number of points */
    public var points: Int?
    public var travelTime: Int?

    public init(symbol: String?, text: String?, priceFactor: Int?, startTime: String?, high: String?, low: String?, timePeriod: String?, barLength: Int?, mdAvailability: String?, mktDataDelay: Int?, outsideRth: Bool?, tradingDayDuration: Int?, volumeFactor: Int?, priceDisplayRule: Int?, priceDisplayValue: String?, negativeCapable: Bool?, messageVersion: Int?, data: [HistorydataData]?, points: Int?, travelTime: Int?) {
        self.symbol = symbol
        self.text = text
        self.priceFactor = priceFactor
        self.startTime = startTime
        self.high = high
        self.low = low
        self.timePeriod = timePeriod
        self.barLength = barLength
        self.mdAvailability = mdAvailability
        self.mktDataDelay = mktDataDelay
        self.outsideRth = outsideRth
        self.tradingDayDuration = tradingDayDuration
        self.volumeFactor = volumeFactor
        self.priceDisplayRule = priceDisplayRule
        self.priceDisplayValue = priceDisplayValue
        self.negativeCapable = negativeCapable
        self.messageVersion = messageVersion
        self.data = data
        self.points = points
        self.travelTime = travelTime
    }


}

