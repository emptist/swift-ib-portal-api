//
//  File.swift
//  
//
//  Created by piotrg on 12/01/2021.
//

import Foundation
import SwiftIBPortalApi

//let apiClient = APIClient(baseURL: "https://localhost:5000/v1/portal")
let apiClient = IBApiClient(baseUrl: URL(string: "https://localhost:5000/v1/portal")!)
let exampleRequest = IBExampleRequest()
let validateSSORequest = IBPortalApi.Session.GetSsoValidate.Request()
let getPortfolioAccountsRequest = IBPortalApi.Account.GetPortfolioAccounts.Request()

let handle = Task.runDetached {
    do {
//        let ssoValidateResponse = try await apiClient.makeRequest(validateSSORequest)
//        print(ssoValidateResponse.success)
//        let getIServerAccountsResponse = try await apiClient.makeRequest(getPortfolioAccountsRequest)
//        print(getIServerAccountsResponse.success)
        let exampleResponse = try await apiClient.makeRequest(exampleRequest)
    } catch {
        print(error)
    }
}

RunLoop.main.run()
