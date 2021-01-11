//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension IBPortalApi.Order {

    /**
    Preview Order

    This endpoint allows you to preview order without actually submitting the order and you can get
commission information in the response.
    */
    public enum PostIserverAccountByAccountIdOrderWhatif {

        public static let service = APIService<Response>(id: "postIserverAccountByAccountIdOrderWhatif", tag: "Order", method: "POST", path: "/iserver/account/{accountId}/order/whatif", hasBody: true, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** account id */
                public var accountId: String

                public init(accountId: String) {
                    self.accountId = accountId
                }
            }

            public var options: Options

            public var body: IBOrderRequest

            public init(body: IBOrderRequest, options: Options, encoder: RequestEncoder? = nil) {
                self.body = body
                self.options = options
                super.init(service: PostIserverAccountByAccountIdOrderWhatif.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(accountId: String, body: IBOrderRequest) {
                let options = Options(accountId: accountId)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "accountId" + "}", with: "\(self.options.accountId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** This endpoint allows you to preview order without actually submitting the order and you can get
            commission information in the response.
             */
            public struct Status200: APIModel {

                public let amount: Amount?

                public let equity: Equity?

                public let error: String?

                public let initial: Initial?

                public let maintenance: Maintenance?

                public let warn: String?

                /** This endpoint allows you to preview order without actually submitting the order and you can get
                commission information in the response.
                 */
                public struct Amount: APIModel {

                    /** for example 23,000 USD */
                    public let amount: String?

                    /** for example 1.1 ... 1.2 USD */
                    public let commission: String?

                    public let total: String?

                    public init(amount: String? = nil, commission: String? = nil, total: String? = nil) {
                        self.amount = amount
                        self.commission = commission
                        self.total = total
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: StringCodingKey.self)

                        amount = try container.decodeIfPresent("amount")
                        commission = try container.decodeIfPresent("commission")
                        total = try container.decodeIfPresent("total")
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: StringCodingKey.self)

                        try container.encodeIfPresent(amount, forKey: "amount")
                        try container.encodeIfPresent(commission, forKey: "commission")
                        try container.encodeIfPresent(total, forKey: "total")
                    }

                }

                /** This endpoint allows you to preview order without actually submitting the order and you can get
                commission information in the response.
                 */
                public struct Equity: APIModel {

                    public let after: String?

                    public let change: String?

                    public let current: String?

                    public init(after: String? = nil, change: String? = nil, current: String? = nil) {
                        self.after = after
                        self.change = change
                        self.current = current
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: StringCodingKey.self)

                        after = try container.decodeIfPresent("after")
                        change = try container.decodeIfPresent("change")
                        current = try container.decodeIfPresent("current")
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: StringCodingKey.self)

                        try container.encodeIfPresent(after, forKey: "after")
                        try container.encodeIfPresent(change, forKey: "change")
                        try container.encodeIfPresent(current, forKey: "current")
                    }

                }

                /** This endpoint allows you to preview order without actually submitting the order and you can get
                commission information in the response.
                 */
                public struct Initial: APIModel {

                    public let after: String?

                    public let change: String?

                    public let current: String?

                    public init(after: String? = nil, change: String? = nil, current: String? = nil) {
                        self.after = after
                        self.change = change
                        self.current = current
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: StringCodingKey.self)

                        after = try container.decodeIfPresent("after")
                        change = try container.decodeIfPresent("change")
                        current = try container.decodeIfPresent("current")
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: StringCodingKey.self)

                        try container.encodeIfPresent(after, forKey: "after")
                        try container.encodeIfPresent(change, forKey: "change")
                        try container.encodeIfPresent(current, forKey: "current")
                    }

                }

                /** This endpoint allows you to preview order without actually submitting the order and you can get
                commission information in the response.
                 */
                public struct Maintenance: APIModel {

                    public let after: String?

                    public let change: String?

                    public let current: String?

                    public init(after: String? = nil, change: String? = nil, current: String? = nil) {
                        self.after = after
                        self.change = change
                        self.current = current
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: StringCodingKey.self)

                        after = try container.decodeIfPresent("after")
                        change = try container.decodeIfPresent("change")
                        current = try container.decodeIfPresent("current")
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: StringCodingKey.self)

                        try container.encodeIfPresent(after, forKey: "after")
                        try container.encodeIfPresent(change, forKey: "change")
                        try container.encodeIfPresent(current, forKey: "current")
                    }

                }

                public init(amount: Amount? = nil, equity: Equity? = nil, error: String? = nil, initial: Initial? = nil, maintenance: Maintenance? = nil, warn: String? = nil) {
                    self.amount = amount
                    self.equity = equity
                    self.error = error
                    self.initial = initial
                    self.maintenance = maintenance
                    self.warn = warn
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    amount = try container.decodeIfPresent("amount")
                    equity = try container.decodeIfPresent("equity")
                    error = try container.decodeIfPresent("error")
                    initial = try container.decodeIfPresent("initial")
                    maintenance = try container.decodeIfPresent("maintenance")
                    warn = try container.decodeIfPresent("warn")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(amount, forKey: "amount")
                    try container.encodeIfPresent(equity, forKey: "equity")
                    try container.encodeIfPresent(error, forKey: "error")
                    try container.encodeIfPresent(initial, forKey: "initial")
                    try container.encodeIfPresent(maintenance, forKey: "maintenance")
                    try container.encodeIfPresent(warn, forKey: "warn")
                }

            }
            public typealias SuccessType = Status200

            /** returns an object */
            case status200(Status200)

            public var success: Status200? {
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
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
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
