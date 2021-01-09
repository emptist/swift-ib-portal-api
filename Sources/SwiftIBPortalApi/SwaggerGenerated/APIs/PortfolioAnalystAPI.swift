//
// PortfolioAnalystAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class PortfolioAnalystAPI {
    /**
     Account Performance
     
     - parameter body: (body) an array of account ids 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func paPerformancePost(body: Body2, completion: @escaping ((_ data: Performance?,_ error: Error?) -> Void)) {
        paPerformancePostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Account Performance
     - POST /pa/performance
     - Returns the performance (MTM) for the given accounts, if more than one account is passed, the result is consolidated.
     - examples: [{contentType=application/json, example={
  "currencyType" : "currencyType",
  "rc" : 6,
  "nav" : {
    "data" : [ {
      "idType" : "idType",
      "start" : "start",
      "returns" : [ 0.80082819046101150206595775671303272247314453125, 0.80082819046101150206595775671303272247314453125 ],
      "end" : "end",
      "id" : "id",
      "baseCurrency" : "baseCurrency"
    }, {
      "idType" : "idType",
      "start" : "start",
      "returns" : [ 0.80082819046101150206595775671303272247314453125, 0.80082819046101150206595775671303272247314453125 ],
      "end" : "end",
      "id" : "id",
      "baseCurrency" : "baseCurrency"
    } ],
    "freq" : "freq",
    "dates" : [ "dates", "dates" ]
  },
  "cps" : {
    "data" : [ {
      "idType" : "idType",
      "start" : "start",
      "returns" : [ 0.80082819046101150206595775671303272247314453125, 0.80082819046101150206595775671303272247314453125 ],
      "end" : "end",
      "id" : "id",
      "baseCurrency" : "baseCurrency"
    }, {
      "idType" : "idType",
      "start" : "start",
      "returns" : [ 0.80082819046101150206595775671303272247314453125, 0.80082819046101150206595775671303272247314453125 ],
      "end" : "end",
      "id" : "id",
      "baseCurrency" : "baseCurrency"
    } ],
    "freq" : "freq",
    "dates" : [ "dates", "dates" ]
  },
  "tpps" : {
    "data" : [ {
      "idType" : "idType",
      "start" : "start",
      "returns" : [ 0.80082819046101150206595775671303272247314453125, 0.80082819046101150206595775671303272247314453125 ],
      "end" : "end",
      "id" : "id",
      "baseCurrency" : "baseCurrency"
    }, {
      "idType" : "idType",
      "start" : "start",
      "returns" : [ 0.80082819046101150206595775671303272247314453125, 0.80082819046101150206595775671303272247314453125 ],
      "end" : "end",
      "id" : "id",
      "baseCurrency" : "baseCurrency"
    } ],
    "freq" : "freq",
    "dates" : [ "dates", "dates" ]
  },
  "id" : "id",
  "pm" : "pm",
  "included" : [ "included", "included" ]
}}]
     
     - parameter body: (body) an array of account ids 

     - returns: RequestBuilder<Performance> 
     */
    open class func paPerformancePostWithRequestBuilder(body: Body2) -> RequestBuilder<Performance> {
        let path = "/pa/performance"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Performance>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Account Balance's Summary
     
     - parameter body: (body) an array of account ids 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func paSummaryPost(body: Body3, completion: @escaping ((_ data: Summary?,_ error: Error?) -> Void)) {
        paSummaryPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Account Balance's Summary
     - POST /pa/summary
     - Returns a summary of all account balances for the given accounts, if more than one account is passed, the result is consolidated.
     - examples: [{contentType=application/json, example={
  "amount" : 0.80082819046101150206595775671303272247314453125,
  "isNull" : true,
  "currency" : "currency",
  "value" : "value",
  "timestamp" : 6
}}]
     
     - parameter body: (body) an array of account ids 

     - returns: RequestBuilder<Summary> 
     */
    open class func paSummaryPostWithRequestBuilder(body: Body3) -> RequestBuilder<Summary> {
        let path = "/pa/summary"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Summary>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Position's Transaction History
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func paTransactionsPost(body: Body4, completion: @escaping ((_ data: Transactions?,_ error: Error?) -> Void)) {
        paTransactionsPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Position's Transaction History
     - POST /pa/transactions
     - transaction history for a given number of conids and accounts. Types of transactions include dividend payments, buy and sell transactions, transfers. 
     - examples: [{contentType=application/json, example={
  "currency" : "currency",
  "from" : 0.80082819046101150206595775671303272247314453125,
  "id" : "id",
  "to" : 6.02745618307040320615897144307382404804229736328125,
  "includesRealTime" : true,
  "transactions" : [ {
    "date" : "date",
    "cur" : "cur",
    "fxRate" : 5.962133916683182377482808078639209270477294921875,
    "pr" : 2.3021358869347654518833223846741020679473876953125,
    "qty" : 5.63737665663332876420099637471139430999755859375,
    "acctid" : "acctid",
    "amt" : 7.061401241503109105224211816675961017608642578125,
    "conid" : 1.46581298050294517310021547018550336360931396484375,
    "type" : "type",
    "desc" : "desc"
  }, {
    "date" : "date",
    "cur" : "cur",
    "fxRate" : 5.962133916683182377482808078639209270477294921875,
    "pr" : 2.3021358869347654518833223846741020679473876953125,
    "qty" : 5.63737665663332876420099637471139430999755859375,
    "acctid" : "acctid",
    "amt" : 7.061401241503109105224211816675961017608642578125,
    "conid" : 1.46581298050294517310021547018550336360931396484375,
    "type" : "type",
    "desc" : "desc"
  } ]
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<Transactions> 
     */
    open class func paTransactionsPostWithRequestBuilder(body: Body4) -> RequestBuilder<Transactions> {
        let path = "/pa/transactions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Transactions>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
