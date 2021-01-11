//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.MarketData {

    /**
    Market Data Cancel (Single)

    Cancel market data for given conid. To cancel all market data request(s), see /iserver/marketdata/unsubscribeall.
    */
    public enum GetIserverMarketdataByConidUnsubscribe {

        public static let service = APIService<Response>(id: "getIserverMarketdataByConidUnsubscribe", tag: "Market Data", method: "GET", path: "/iserver/marketdata/{conid}/unsubscribe", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** contract id */
                public var conid: String

                public init(conid: String) {
                    self.conid = conid
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetIserverMarketdataByConidUnsubscribe.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(conid: String) {
                let options = Options(conid: conid)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "conid" + "}", with: "\(self.options.conid)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Cancel market data for given conid. To cancel all market data request(s), see /iserver/marketdata/unsubscribeall.
             */
            public class Status200: APIModel {

                /** success means market data was canceled. */
                public var confirmed: String?

                public init(confirmed: String? = nil) {
                    self.confirmed = confirmed
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    confirmed = try container.decodeIfPresent("confirmed")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(confirmed, forKey: "confirmed")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.confirmed == object.confirmed else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** confirms market data for conid is canceled */
            case status200(Status200)

            /** cancel failed */
            case status500

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status500: return 500
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status500: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 500: self = .status500
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
