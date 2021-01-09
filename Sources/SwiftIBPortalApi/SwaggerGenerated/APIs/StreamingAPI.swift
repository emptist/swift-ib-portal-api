//
// StreamingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class StreamingAPI {
    /**
     Websocket Endpoint
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func wsPost(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        wsPostWithRequestBuilder().execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Websocket Endpoint
     - POST /ws
     - The streaming API is documented under [Streaming WebSocket Data](https://interactivebrokers.github.io/cpwebapi/RealtimeSubscription.html) for details.

     - returns: RequestBuilder<Void> 
     */
    open class func wsPostWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/ws"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
