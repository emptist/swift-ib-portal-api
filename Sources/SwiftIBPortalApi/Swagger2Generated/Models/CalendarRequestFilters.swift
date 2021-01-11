//
// CalendarRequestFilters.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CalendarRequestFilters: Codable {

    /** value can be &#39;true&#39; or &#39;false&#39;. */
    public var recentlyHeld: String?
    /** value can be &#39;true&#39; or &#39;false&#39;. */
    public var corporateEarnings: String?
    /** value can be &#39;true&#39; or &#39;false&#39;. */
    public var divExDates: String?
    /** value can be &#39;true&#39; or &#39;false&#39;. */
    public var ipo: String?
    /** value can be &#39;true&#39; or &#39;false&#39;. */
    public var splits: String?
    /** value can be &#39;true&#39; or &#39;false&#39;. */
    public var corporateEvents: String?
    /** value can be &#39;true&#39; or &#39;false&#39;. */
    public var economicEvents: String?
    /** value can be &#39;true&#39; or &#39;false&#39;. */
    public var optionShowMonthly: String?
    /** value can be &#39;true&#39; or &#39;false&#39;. */
    public var optionShowWeekly: String?
    /** default is &#39;All&#39;. */
    public var country: String?
    /** default is &#39;250&#39;. */
    public var limit: String?
    /** default is &#39;50&#39;. */
    public var limitRegion: String?

    public init(recentlyHeld: String?, corporateEarnings: String?, divExDates: String?, ipo: String?, splits: String?, corporateEvents: String?, economicEvents: String?, optionShowMonthly: String?, optionShowWeekly: String?, country: String?, limit: String?, limitRegion: String?) {
        self.recentlyHeld = recentlyHeld
        self.corporateEarnings = corporateEarnings
        self.divExDates = divExDates
        self.ipo = ipo
        self.splits = splits
        self.corporateEvents = corporateEvents
        self.economicEvents = economicEvents
        self.optionShowMonthly = optionShowMonthly
        self.optionShowWeekly = optionShowWeekly
        self.country = country
        self.limit = limit
        self.limitRegion = limitRegion
    }

    public enum CodingKeys: String, CodingKey { 
        case recentlyHeld = "recently_held"
        case corporateEarnings = "corporate_earnings"
        case divExDates = "DivExDates"
        case ipo
        case splits
        case corporateEvents = "corporate_events"
        case economicEvents = "economic_events"
        case optionShowMonthly = "option_show_monthly"
        case optionShowWeekly = "option_show_weekly"
        case country
        case limit
        case limitRegion = "limit_region"
    }


}
