//
// FYIAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class FYIAPI {
    /**
     Delete a device
     
     - parameter deviceId: (path) device ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiDeliveryoptionsDeviceIdDelete(deviceId: String, completion: @escaping ((_ data: JSONValue?,_ error: Error?) -> Void)) {
        fyiDeliveryoptionsDeviceIdDeleteWithRequestBuilder(deviceId: deviceId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a device
     - DELETE /fyi/deliveryoptions/{deviceId}
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter deviceId: (path) device ID 

     - returns: RequestBuilder<JSONValue> 
     */
    open class func fyiDeliveryoptionsDeviceIdDeleteWithRequestBuilder(deviceId: String) -> RequestBuilder<JSONValue> {
        var path = "/fyi/deliveryoptions/{deviceId}"
        let deviceIdPreEscape = "\(deviceId)"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{deviceId}", with: deviceIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<JSONValue>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Enable/Disable device option
     
     - parameter body: (body) device info 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiDeliveryoptionsDevicePost(body: Body1, completion: @escaping ((_ data: InlineResponse2003?,_ error: Error?) -> Void)) {
        fyiDeliveryoptionsDevicePostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Enable/Disable device option
     - POST /fyi/deliveryoptions/device
     - examples: [{contentType=application/json, example={
  "T" : 0,
  "V" : 6
}}]
     
     - parameter body: (body) device info 

     - returns: RequestBuilder<InlineResponse2003> 
     */
    open class func fyiDeliveryoptionsDevicePostWithRequestBuilder(body: Body1) -> RequestBuilder<InlineResponse2003> {
        let path = "/fyi/deliveryoptions/device"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<InlineResponse2003>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Enable/Disable email option
     
     - parameter enabled: (query) true/false 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiDeliveryoptionsEmailPut(enabled: String, completion: @escaping ((_ data: InlineResponse2003?,_ error: Error?) -> Void)) {
        fyiDeliveryoptionsEmailPutWithRequestBuilder(enabled: enabled).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Enable/Disable email option
     - PUT /fyi/deliveryoptions/email
     - examples: [{contentType=application/json, example={
  "T" : 0,
  "V" : 6
}}]
     
     - parameter enabled: (query) true/false 

     - returns: RequestBuilder<InlineResponse2003> 
     */
    open class func fyiDeliveryoptionsEmailPutWithRequestBuilder(enabled: String) -> RequestBuilder<InlineResponse2003> {
        let path = "/fyi/deliveryoptions/email"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "enabled": enabled
        ])

        let requestBuilder: RequestBuilder<InlineResponse2003>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get delivery options
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiDeliveryoptionsGet(completion: @escaping ((_ data: InlineResponse2004?,_ error: Error?) -> Void)) {
        fyiDeliveryoptionsGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get delivery options
     - GET /fyi/deliveryoptions
     - options for sending fyis to email and other devices 
     - examples: [{contentType=application/json, example={
  "E" : [ {
    "A" : "A",
    "UI" : "UI",
    "I" : "I",
    "NM" : "NM"
  }, {
    "A" : "A",
    "UI" : "UI",
    "I" : "I",
    "NM" : "NM"
  } ],
  "M" : 0
}}]

     - returns: RequestBuilder<InlineResponse2004> 
     */
    open class func fyiDeliveryoptionsGetWithRequestBuilder() -> RequestBuilder<InlineResponse2004> {
        let path = "/fyi/deliveryoptions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<InlineResponse2004>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get disclaimer for a certain kind of fyi
     
     - parameter typecode: (path) fyi code, for example --M8, EA 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiDisclaimerTypecodeGet(typecode: String, completion: @escaping ((_ data: InlineResponse2002?,_ error: Error?) -> Void)) {
        fyiDisclaimerTypecodeGetWithRequestBuilder(typecode: typecode).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get disclaimer for a certain kind of fyi
     - GET /fyi/disclaimer/{typecode}
     - examples: [{contentType=application/json, example={
  "DT" : "DT",
  "FC" : "FC"
}}]
     
     - parameter typecode: (path) fyi code, for example --M8, EA 

     - returns: RequestBuilder<InlineResponse2002> 
     */
    open class func fyiDisclaimerTypecodeGetWithRequestBuilder(typecode: String) -> RequestBuilder<InlineResponse2002> {
        var path = "/fyi/disclaimer/{typecode}"
        let typecodePreEscape = "\(typecode)"
        let typecodePostEscape = typecodePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{typecode}", with: typecodePostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<InlineResponse2002>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Mark disclaimer read
     
     - parameter typecode: (path) fyi code, for example --M8, EA 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiDisclaimerTypecodePut(typecode: String, completion: @escaping ((_ data: InlineResponse2003?,_ error: Error?) -> Void)) {
        fyiDisclaimerTypecodePutWithRequestBuilder(typecode: typecode).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Mark disclaimer read
     - PUT /fyi/disclaimer/{typecode}
     - examples: [{contentType=application/json, example={
  "T" : 0,
  "V" : 6
}}]
     
     - parameter typecode: (path) fyi code, for example --M8, EA 

     - returns: RequestBuilder<InlineResponse2003> 
     */
    open class func fyiDisclaimerTypecodePutWithRequestBuilder(typecode: String) -> RequestBuilder<InlineResponse2003> {
        var path = "/fyi/disclaimer/{typecode}"
        let typecodePreEscape = "\(typecode)"
        let typecodePostEscape = typecodePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{typecode}", with: typecodePostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<InlineResponse2003>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of notifications
     
     - parameter max: (query) max number of fyis in response 
     - parameter exclude: (query) if set, don&#39;t set include (optional)
     - parameter include: (query) if set, don&#39;t set exclude (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiNotificationsGet(max: String, exclude: String? = nil, include: String? = nil, completion: @escaping ((_ data: Notifications?,_ error: Error?) -> Void)) {
        fyiNotificationsGetWithRequestBuilder(max: max, exclude: exclude, include: include).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of notifications
     - GET /fyi/notifications
     - examples: [{contentType=application/json, example=""}]
     
     - parameter max: (query) max number of fyis in response 
     - parameter exclude: (query) if set, don&#39;t set include (optional)
     - parameter include: (query) if set, don&#39;t set exclude (optional)

     - returns: RequestBuilder<Notifications> 
     */
    open class func fyiNotificationsGetWithRequestBuilder(max: String, exclude: String? = nil, include: String? = nil) -> RequestBuilder<Notifications> {
        let path = "/fyi/notifications"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "exclude": exclude, 
            "include": include, 
            "max": max
        ])

        let requestBuilder: RequestBuilder<Notifications>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get more notifications based on a certain one
     
     - parameter _id: (query) id of last notification in the list 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiNotificationsMoreGet(_id: String, completion: @escaping ((_ data: Notifications?,_ error: Error?) -> Void)) {
        fyiNotificationsMoreGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get more notifications based on a certain one
     - GET /fyi/notifications/more
     - examples: [{contentType=application/json, example=""}]
     
     - parameter _id: (query) id of last notification in the list 

     - returns: RequestBuilder<Notifications> 
     */
    open class func fyiNotificationsMoreGetWithRequestBuilder(_id: String) -> RequestBuilder<Notifications> {
        let path = "/fyi/notifications/more"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": _id
        ])

        let requestBuilder: RequestBuilder<Notifications>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of notifications
     
     - parameter notificationId: (path) mark a notification read 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiNotificationsNotificationIdPut(notificationId: String, completion: @escaping ((_ data: JSONValue?,_ error: Error?) -> Void)) {
        fyiNotificationsNotificationIdPutWithRequestBuilder(notificationId: notificationId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of notifications
     - PUT /fyi/notifications/{notificationId}
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter notificationId: (path) mark a notification read 

     - returns: RequestBuilder<JSONValue> 
     */
    open class func fyiNotificationsNotificationIdPutWithRequestBuilder(notificationId: String) -> RequestBuilder<JSONValue> {
        var path = "/fyi/notifications/{notificationId}"
        let notificationIdPreEscape = "\(notificationId)"
        let notificationIdPostEscape = notificationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{notificationId}", with: notificationIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<JSONValue>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of subscriptions
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiSettingsGet(completion: @escaping ((_ data: [InlineResponse2001]?,_ error: Error?) -> Void)) {
        fyiSettingsGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of subscriptions
     - GET /fyi/settings
     - Return the current choices of subscriptions, we can toggle the option 
     - examples: [{contentType=application/json, example=[ {
  "A" : 0,
  "H" : 6,
  "FN" : "FN",
  "FC" : "FC",
  "FD" : "FD"
}, {
  "A" : 0,
  "H" : 6,
  "FN" : "FN",
  "FC" : "FC",
  "FD" : "FD"
} ]}]

     - returns: RequestBuilder<[InlineResponse2001]> 
     */
    open class func fyiSettingsGetWithRequestBuilder() -> RequestBuilder<[InlineResponse2001]> {
        let path = "/fyi/settings"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[InlineResponse2001]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Enable/Disable certain subscription
     
     - parameter typecode: (path) fyi code 
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiSettingsTypecodePost(typecode: String, body: Body, completion: @escaping ((_ data: JSONValue?,_ error: Error?) -> Void)) {
        fyiSettingsTypecodePostWithRequestBuilder(typecode: typecode, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Enable/Disable certain subscription
     - POST /fyi/settings/{typecode}
     - Configure which typecode you would like to enable/disable. 
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter typecode: (path) fyi code 
     - parameter body: (body)  

     - returns: RequestBuilder<JSONValue> 
     */
    open class func fyiSettingsTypecodePostWithRequestBuilder(typecode: String, body: Body) -> RequestBuilder<JSONValue> {
        var path = "/fyi/settings/{typecode}"
        let typecodePreEscape = "\(typecode)"
        let typecodePostEscape = typecodePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{typecode}", with: typecodePostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<JSONValue>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get unread number of fyis. The HTTP method POST is also supported.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fyiUnreadnumberGet(completion: @escaping ((_ data: InlineResponse200?,_ error: Error?) -> Void)) {
        fyiUnreadnumberGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get unread number of fyis. The HTTP method POST is also supported.
     - GET /fyi/unreadnumber
     - Returns the total number of unread fyis 
     - examples: [{contentType=application/json, example={
  "BN" : 0
}}]

     - returns: RequestBuilder<InlineResponse200> 
     */
    open class func fyiUnreadnumberGetWithRequestBuilder() -> RequestBuilder<InlineResponse200> {
        let path = "/fyi/unreadnumber"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<InlineResponse200>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
