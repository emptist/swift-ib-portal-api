//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ModifyOrder: APIModel {

    public var acctId: String?

    public var auxPrice: Double?

    public var conid: Int?

    /** optional, not required */
    public var listingExchange: String?

    /** for example LMT */
    public var orderType: String?

    public var outsideRTH: Bool?

    public var price: Double?

    /** usually integer, for some special cases can be float numbers */
    public var quantity: Double?

    /** SELL or BUY */
    public var side: String?

    public var ticker: String?

    /** for example DAY */
    public var tif: String?

    public init(acctId: String? = nil, auxPrice: Double? = nil, conid: Int? = nil, listingExchange: String? = nil, orderType: String? = nil, outsideRTH: Bool? = nil, price: Double? = nil, quantity: Double? = nil, side: String? = nil, ticker: String? = nil, tif: String? = nil) {
        self.acctId = acctId
        self.auxPrice = auxPrice
        self.conid = conid
        self.listingExchange = listingExchange
        self.orderType = orderType
        self.outsideRTH = outsideRTH
        self.price = price
        self.quantity = quantity
        self.side = side
        self.ticker = ticker
        self.tif = tif
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        acctId = try container.decodeIfPresent("acctId")
        auxPrice = try container.decodeIfPresent("auxPrice")
        conid = try container.decodeIfPresent("conid")
        listingExchange = try container.decodeIfPresent("listingExchange")
        orderType = try container.decodeIfPresent("orderType")
        outsideRTH = try container.decodeIfPresent("outsideRTH")
        price = try container.decodeIfPresent("price")
        quantity = try container.decodeIfPresent("quantity")
        side = try container.decodeIfPresent("side")
        ticker = try container.decodeIfPresent("ticker")
        tif = try container.decodeIfPresent("tif")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(acctId, forKey: "acctId")
        try container.encodeIfPresent(auxPrice, forKey: "auxPrice")
        try container.encodeIfPresent(conid, forKey: "conid")
        try container.encodeIfPresent(listingExchange, forKey: "listingExchange")
        try container.encodeIfPresent(orderType, forKey: "orderType")
        try container.encodeIfPresent(outsideRTH, forKey: "outsideRTH")
        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(quantity, forKey: "quantity")
        try container.encodeIfPresent(side, forKey: "side")
        try container.encodeIfPresent(ticker, forKey: "ticker")
        try container.encodeIfPresent(tif, forKey: "tif")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ModifyOrder else { return false }
      guard self.acctId == object.acctId else { return false }
      guard self.auxPrice == object.auxPrice else { return false }
      guard self.conid == object.conid else { return false }
      guard self.listingExchange == object.listingExchange else { return false }
      guard self.orderType == object.orderType else { return false }
      guard self.outsideRTH == object.outsideRTH else { return false }
      guard self.price == object.price else { return false }
      guard self.quantity == object.quantity else { return false }
      guard self.side == object.side else { return false }
      guard self.ticker == object.ticker else { return false }
      guard self.tif == object.tif else { return false }
      return true
    }

    public static func == (lhs: ModifyOrder, rhs: ModifyOrder) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}