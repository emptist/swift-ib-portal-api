//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct IBCalendarRequest: APIModel {

    public let date: Date?

    public let filters: Filters?

    public struct Date: APIModel {

        /** end date of a period. for example 20180808-0400 */
        public let end: String?

        /** start date of a period. for example 20180808-0400 */
        public let start: String?

        public init(end: String? = nil, start: String? = nil) {
            self.end = end
            self.start = start
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            end = try container.decodeIfPresent("end")
            start = try container.decodeIfPresent("start")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(end, forKey: "end")
            try container.encodeIfPresent(start, forKey: "start")
        }

    }

    public struct Filters: APIModel {

        /** value can be 'true' or 'false'. */
        public let divExDates: String?

        /** value can be 'true' or 'false'. */
        public let corporateEarnings: String?

        /** value can be 'true' or 'false'. */
        public let corporateEvents: String?

        /** default is 'All'. */
        public let country: String?

        /** value can be 'true' or 'false'. */
        public let economicEvents: String?

        /** value can be 'true' or 'false'. */
        public let ipo: String?

        /** default is '250'. */
        public let limit: String?

        /** default is '50'. */
        public let limitRegion: String?

        /** value can be 'true' or 'false'. */
        public let optionShowMonthly: String?

        /** value can be 'true' or 'false'. */
        public let optionShowWeekly: String?

        /** value can be 'true' or 'false'. */
        public let recentlyHeld: String?

        /** value can be 'true' or 'false'. */
        public let splits: String?

        public init(divExDates: String? = nil, corporateEarnings: String? = nil, corporateEvents: String? = nil, country: String? = nil, economicEvents: String? = nil, ipo: String? = nil, limit: String? = nil, limitRegion: String? = nil, optionShowMonthly: String? = nil, optionShowWeekly: String? = nil, recentlyHeld: String? = nil, splits: String? = nil) {
            self.divExDates = divExDates
            self.corporateEarnings = corporateEarnings
            self.corporateEvents = corporateEvents
            self.country = country
            self.economicEvents = economicEvents
            self.ipo = ipo
            self.limit = limit
            self.limitRegion = limitRegion
            self.optionShowMonthly = optionShowMonthly
            self.optionShowWeekly = optionShowWeekly
            self.recentlyHeld = recentlyHeld
            self.splits = splits
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            divExDates = try container.decodeIfPresent("DivExDates")
            corporateEarnings = try container.decodeIfPresent("corporate_earnings")
            corporateEvents = try container.decodeIfPresent("corporate_events")
            country = try container.decodeIfPresent("country")
            economicEvents = try container.decodeIfPresent("economic_events")
            ipo = try container.decodeIfPresent("ipo")
            limit = try container.decodeIfPresent("limit")
            limitRegion = try container.decodeIfPresent("limit_region")
            optionShowMonthly = try container.decodeIfPresent("option_show_monthly")
            optionShowWeekly = try container.decodeIfPresent("option_show_weekly")
            recentlyHeld = try container.decodeIfPresent("recently_held")
            splits = try container.decodeIfPresent("splits")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(divExDates, forKey: "DivExDates")
            try container.encodeIfPresent(corporateEarnings, forKey: "corporate_earnings")
            try container.encodeIfPresent(corporateEvents, forKey: "corporate_events")
            try container.encodeIfPresent(country, forKey: "country")
            try container.encodeIfPresent(economicEvents, forKey: "economic_events")
            try container.encodeIfPresent(ipo, forKey: "ipo")
            try container.encodeIfPresent(limit, forKey: "limit")
            try container.encodeIfPresent(limitRegion, forKey: "limit_region")
            try container.encodeIfPresent(optionShowMonthly, forKey: "option_show_monthly")
            try container.encodeIfPresent(optionShowWeekly, forKey: "option_show_weekly")
            try container.encodeIfPresent(recentlyHeld, forKey: "recently_held")
            try container.encodeIfPresent(splits, forKey: "splits")
        }

    }

    public init(date: Date? = nil, filters: Filters? = nil) {
        self.date = date
        self.filters = filters
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        date = try container.decodeIfPresent("date")
        filters = try container.decodeIfPresent("filters")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(date, forKey: "date")
        try container.encodeIfPresent(filters, forKey: "filters")
    }

}