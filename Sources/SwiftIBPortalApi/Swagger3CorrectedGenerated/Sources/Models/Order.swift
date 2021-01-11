//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** contains all the order related info */
public class Order: APIModel {

    /** account id */
    public var acct: String?

    /** back-ground color */
    public var bgColor: String?

    public var companyName: String?

    public var conid: Int?

    public var description1: String?

    public var fgColor: String?

    public var filledQuantity: String?

    /** for example NASDAQ.NMS */
    public var listingExchange: String?

    public var orderDesc: String?

    public var orderId: Int?

    /** User defined string used to identify the order. Value is set using "cOID" field while placing an order. */
    public var orderRef: String?

    /** for example Limit */
    public var origOrderType: String?

    /** Only exists in child order of bracket */
    public var parentId: Int?

    public var price: Double?

    public var remainingQuantity: String?

    /** for example STK */
    public var secType: String?

    /** BUY or SELL */
    public var side: String?

    /** PendingSubmit - Indicates the order was sent, but confirmation has not been received that it has been received by the destination. 
                Occurs most commonly if an exchange is closed.
PendingCancel - Indicates that a request has been sent to cancel an order but confirmation has not been received of its cancellation. PreSubmitted - Indicates that a simulated order type has been accepted by the IBKR system and that this order has yet to be elected. 
               The order is held in the IBKR system until the election criteria are met. At that time the order is transmitted to the order destination as specified. 
Submitted - Indicates that the order has been accepted at the order destination and is working. Cancelled - Indicates that the balance of the order has been confirmed cancelled by the IB system. 
            This could occur unexpectedly when IB or the destination has rejected the order.  
Filled - Indicates that the order has been completely filled.  Inactive - Indicates the order is not working, for instance if the order was invalid and triggered an error message,
           or if the order was to short a security and shares have not yet been located. 
 */
    public var status: String?

    /** for exmple FB */
    public var ticker: String?

    public init(acct: String? = nil, bgColor: String? = nil, companyName: String? = nil, conid: Int? = nil, description1: String? = nil, fgColor: String? = nil, filledQuantity: String? = nil, listingExchange: String? = nil, orderDesc: String? = nil, orderId: Int? = nil, orderRef: String? = nil, origOrderType: String? = nil, parentId: Int? = nil, price: Double? = nil, remainingQuantity: String? = nil, secType: String? = nil, side: String? = nil, status: String? = nil, ticker: String? = nil) {
        self.acct = acct
        self.bgColor = bgColor
        self.companyName = companyName
        self.conid = conid
        self.description1 = description1
        self.fgColor = fgColor
        self.filledQuantity = filledQuantity
        self.listingExchange = listingExchange
        self.orderDesc = orderDesc
        self.orderId = orderId
        self.orderRef = orderRef
        self.origOrderType = origOrderType
        self.parentId = parentId
        self.price = price
        self.remainingQuantity = remainingQuantity
        self.secType = secType
        self.side = side
        self.status = status
        self.ticker = ticker
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        acct = try container.decodeIfPresent("acct")
        bgColor = try container.decodeIfPresent("bgColor")
        companyName = try container.decodeIfPresent("companyName")
        conid = try container.decodeIfPresent("conid")
        description1 = try container.decodeIfPresent("description1")
        fgColor = try container.decodeIfPresent("fgColor")
        filledQuantity = try container.decodeIfPresent("filledQuantity")
        listingExchange = try container.decodeIfPresent("listingExchange")
        orderDesc = try container.decodeIfPresent("orderDesc")
        orderId = try container.decodeIfPresent("orderId")
        orderRef = try container.decodeIfPresent("order_ref")
        origOrderType = try container.decodeIfPresent("origOrderType")
        parentId = try container.decodeIfPresent("parentId")
        price = try container.decodeIfPresent("price")
        remainingQuantity = try container.decodeIfPresent("remainingQuantity")
        secType = try container.decodeIfPresent("secType")
        side = try container.decodeIfPresent("side")
        status = try container.decodeIfPresent("status")
        ticker = try container.decodeIfPresent("ticker")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(acct, forKey: "acct")
        try container.encodeIfPresent(bgColor, forKey: "bgColor")
        try container.encodeIfPresent(companyName, forKey: "companyName")
        try container.encodeIfPresent(conid, forKey: "conid")
        try container.encodeIfPresent(description1, forKey: "description1")
        try container.encodeIfPresent(fgColor, forKey: "fgColor")
        try container.encodeIfPresent(filledQuantity, forKey: "filledQuantity")
        try container.encodeIfPresent(listingExchange, forKey: "listingExchange")
        try container.encodeIfPresent(orderDesc, forKey: "orderDesc")
        try container.encodeIfPresent(orderId, forKey: "orderId")
        try container.encodeIfPresent(orderRef, forKey: "order_ref")
        try container.encodeIfPresent(origOrderType, forKey: "origOrderType")
        try container.encodeIfPresent(parentId, forKey: "parentId")
        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(remainingQuantity, forKey: "remainingQuantity")
        try container.encodeIfPresent(secType, forKey: "secType")
        try container.encodeIfPresent(side, forKey: "side")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeIfPresent(ticker, forKey: "ticker")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Order else { return false }
      guard self.acct == object.acct else { return false }
      guard self.bgColor == object.bgColor else { return false }
      guard self.companyName == object.companyName else { return false }
      guard self.conid == object.conid else { return false }
      guard self.description1 == object.description1 else { return false }
      guard self.fgColor == object.fgColor else { return false }
      guard self.filledQuantity == object.filledQuantity else { return false }
      guard self.listingExchange == object.listingExchange else { return false }
      guard self.orderDesc == object.orderDesc else { return false }
      guard self.orderId == object.orderId else { return false }
      guard self.orderRef == object.orderRef else { return false }
      guard self.origOrderType == object.origOrderType else { return false }
      guard self.parentId == object.parentId else { return false }
      guard self.price == object.price else { return false }
      guard self.remainingQuantity == object.remainingQuantity else { return false }
      guard self.secType == object.secType else { return false }
      guard self.side == object.side else { return false }
      guard self.status == object.status else { return false }
      guard self.ticker == object.ticker else { return false }
      return true
    }

    public static func == (lhs: Order, rhs: Order) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}