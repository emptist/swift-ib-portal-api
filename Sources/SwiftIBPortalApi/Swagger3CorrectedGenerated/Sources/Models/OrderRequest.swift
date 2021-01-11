//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class OrderRequest: APIModel {

    /** acctId is optional. It should be one of the accounts returned by
/iserver/accounts. If not passed, the first one in the list is selected.
 */
    public var acctId: String?

    /** Set the allocation method when placing an order using an FA account for a group
Possible allocation methods are "NetLiquidity", "AvailableEquity", "EqualQuantity" and "PctChange".
 */
    public var allocationMethod: String?

    /** Customer Order ID. An arbitraty string that can be used to identify the order, e.g "my-fb-order". The
value must be unique for a 24h span. Please do not set this value for child orders when placing a bracket order.
 */
    public var cOID: String?

    /** conid is the identifier of the security you want to trade, you can find the
conid with /iserver/secdef/search.
 */
    public var conid: Int?

    /** double number, this is the cash quantity field which can only be used for FX conversion order.
 */
    public var fxQty: Double?

    /** set to true if the order is a FX conversion order
 */
    public var isCurrencyConversion: Bool?

    /** listingExchange is optional. By default we use "SMART" routing. Possible values are available via this end
point: /v1/portal/iserver/contract/{{conid}}/info, see valid_exchange: e.g: SMART,AMEX,NYSE,
CBOE,ISE,CHX,ARCA,ISLAND,DRCTEDGE,BEX,BATS,EDGEA,CSFBALGO,JE FFALGO,BYX,IEX,FOXRIVER,TPLUS1,NYSENAT,PSX
 */
    public var listingExchange: String?

    /** orderType can be one of MKT (Market), LMT (Limit), STP (Stop) or STP_LIMIT (stop limit)
 */
    public var orderType: String?

    /** set to true if the order can be executed outside regular trading hours.
 */
    public var outsideRTH: Bool?

    /** When placing bracket orders, the child parentId must be equal to the cOId (customer order id) of the parent.
 */
    public var parentId: String?

    /** optional if order is MKT, for LMT, this is the limit price. For STP this is the stop price.
 */
    public var price: Double?

    /** usually integer, for some special cases can be float numbers */
    public var quantity: Double?

    /** for example QuickTrade */
    public var referrer: String?

    /** conid:type for example 265598:STK */
    public var secType: String?

    /** SELL or BUY */
    public var side: String?

    public var ticker: String?

    /** GTC (Good Till Cancel) or DAY. DAY orders are automatically cancelled at the end of the Day or Trading hours.
 */
    public var tif: String?

    /** If true, the system will use the Adaptive Algo to submit the order
https://www.interactivebrokers.com/en/index.php?f=19091
 */
    public var useAdaptive: Bool?

    public init(acctId: String? = nil, allocationMethod: String? = nil, cOID: String? = nil, conid: Int? = nil, fxQty: Double? = nil, isCurrencyConversion: Bool? = nil, listingExchange: String? = nil, orderType: String? = nil, outsideRTH: Bool? = nil, parentId: String? = nil, price: Double? = nil, quantity: Double? = nil, referrer: String? = nil, secType: String? = nil, side: String? = nil, ticker: String? = nil, tif: String? = nil, useAdaptive: Bool? = nil) {
        self.acctId = acctId
        self.allocationMethod = allocationMethod
        self.cOID = cOID
        self.conid = conid
        self.fxQty = fxQty
        self.isCurrencyConversion = isCurrencyConversion
        self.listingExchange = listingExchange
        self.orderType = orderType
        self.outsideRTH = outsideRTH
        self.parentId = parentId
        self.price = price
        self.quantity = quantity
        self.referrer = referrer
        self.secType = secType
        self.side = side
        self.ticker = ticker
        self.tif = tif
        self.useAdaptive = useAdaptive
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        acctId = try container.decodeIfPresent("acctId")
        allocationMethod = try container.decodeIfPresent("allocationMethod")
        cOID = try container.decodeIfPresent("cOID")
        conid = try container.decodeIfPresent("conid")
        fxQty = try container.decodeIfPresent("fxQty")
        isCurrencyConversion = try container.decodeIfPresent("isCurrencyConversion")
        listingExchange = try container.decodeIfPresent("listingExchange")
        orderType = try container.decodeIfPresent("orderType")
        outsideRTH = try container.decodeIfPresent("outsideRTH")
        parentId = try container.decodeIfPresent("parentId")
        price = try container.decodeIfPresent("price")
        quantity = try container.decodeIfPresent("quantity")
        referrer = try container.decodeIfPresent("referrer")
        secType = try container.decodeIfPresent("secType")
        side = try container.decodeIfPresent("side")
        ticker = try container.decodeIfPresent("ticker")
        tif = try container.decodeIfPresent("tif")
        useAdaptive = try container.decodeIfPresent("useAdaptive")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(acctId, forKey: "acctId")
        try container.encodeIfPresent(allocationMethod, forKey: "allocationMethod")
        try container.encodeIfPresent(cOID, forKey: "cOID")
        try container.encodeIfPresent(conid, forKey: "conid")
        try container.encodeIfPresent(fxQty, forKey: "fxQty")
        try container.encodeIfPresent(isCurrencyConversion, forKey: "isCurrencyConversion")
        try container.encodeIfPresent(listingExchange, forKey: "listingExchange")
        try container.encodeIfPresent(orderType, forKey: "orderType")
        try container.encodeIfPresent(outsideRTH, forKey: "outsideRTH")
        try container.encodeIfPresent(parentId, forKey: "parentId")
        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(quantity, forKey: "quantity")
        try container.encodeIfPresent(referrer, forKey: "referrer")
        try container.encodeIfPresent(secType, forKey: "secType")
        try container.encodeIfPresent(side, forKey: "side")
        try container.encodeIfPresent(ticker, forKey: "ticker")
        try container.encodeIfPresent(tif, forKey: "tif")
        try container.encodeIfPresent(useAdaptive, forKey: "useAdaptive")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? OrderRequest else { return false }
      guard self.acctId == object.acctId else { return false }
      guard self.allocationMethod == object.allocationMethod else { return false }
      guard self.cOID == object.cOID else { return false }
      guard self.conid == object.conid else { return false }
      guard self.fxQty == object.fxQty else { return false }
      guard self.isCurrencyConversion == object.isCurrencyConversion else { return false }
      guard self.listingExchange == object.listingExchange else { return false }
      guard self.orderType == object.orderType else { return false }
      guard self.outsideRTH == object.outsideRTH else { return false }
      guard self.parentId == object.parentId else { return false }
      guard self.price == object.price else { return false }
      guard self.quantity == object.quantity else { return false }
      guard self.referrer == object.referrer else { return false }
      guard self.secType == object.secType else { return false }
      guard self.side == object.side else { return false }
      guard self.ticker == object.ticker else { return false }
      guard self.tif == object.tif else { return false }
      guard self.useAdaptive == object.useAdaptive else { return false }
      return true
    }

    public static func == (lhs: OrderRequest, rhs: OrderRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
