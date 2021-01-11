//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension IBPortalApi.Portfolio {

    /**
    Portfolio Positions

    Returns a list of positions for the given account. The endpoint supports paging, page's default size is 30 positions. /portfolio/accounts or /portfolio/subaccounts must be called prior to this endpoint.
    */
    public enum GetPortfolioByAccountIdPositionsByPageId {

        public static let service = APIService<Response>(id: "getPortfolioByAccountIdPositionsByPageId", tag: "Portfolio", method: "GET", path: "/portfolio/{accountId}/positions/{pageId}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** account id */
                public var accountId: String

                /** page id */
                public var pageId: String

                /** optional */
                public var model: String?

                /** declare the table to be sorted by which column */
                public var sort: String?

                /** in which order, a means ascending - d means descending */
                public var direction: String?

                /** period for pnl column, can be 1D, 7D, 1M... */
                public var period: String?

                public init(accountId: String, pageId: String, model: String? = nil, sort: String? = nil, direction: String? = nil, period: String? = nil) {
                    self.accountId = accountId
                    self.pageId = pageId
                    self.model = model
                    self.sort = sort
                    self.direction = direction
                    self.period = period
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetPortfolioByAccountIdPositionsByPageId.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(accountId: String, pageId: String, model: String? = nil, sort: String? = nil, direction: String? = nil, period: String? = nil) {
                let options = Options(accountId: accountId, pageId: pageId, model: model, sort: sort, direction: direction, period: period)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "accountId" + "}", with: "\(self.options.accountId)").replacingOccurrences(of: "{" + "pageId" + "}", with: "\(self.options.pageId)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let model = options.model {
                  params["model"] = model
                }
                if let sort = options.sort {
                  params["sort"] = sort
                }
                if let direction = options.direction {
                  params["direction"] = direction
                }
                if let period = options.period {
                  params["period"] = period
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = IBPositions

            /** returns a list of positions in the portfolio */
            case status200(IBPositions)

            public var success: IBPositions? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(IBPositions.self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
