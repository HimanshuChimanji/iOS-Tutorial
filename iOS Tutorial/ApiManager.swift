//
//  ApiManager.swift
//  iOS Tutorial
//
//  Created by Himanshu Chimanji on 02/07/18.
//  Copyright © 2018 Talent4assure. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

protocol apiManagerDelegate:NSObjectProtocol {
    func APIFailureResponse(_ msgError: String)
    func apiSuccessResponse(_ response : NSDictionary)
    
    func apiSuccessResponseArray(_ response : NSArray)
    
}

extension apiManagerDelegate {
    
    func APIFailureResponse(_ msgError: String){
        // leaving this empty
    }
    func apiSuccessResponseArray(_ response: NSArray) {
        print ("hello apimanager Array Response\(response)")
        
    }
    
    func apiSuccessResponse(_ response : NSDictionary){
        print ("hello apimanager \(response)")
    }
}
class ApiManager: NSObject,apiManagerDelegate {
    
    fileprivate let API_STATUS = "error_status"
    var delegate :apiManagerDelegate?
    var appConstants: AppConstants = AppConstants()
    
    
    
    func personNameApi()
    {
        let user = "billa"
        
        let password = "abc123"
        
        let credentialData = "\(user):\(password)".data(using: String.Encoding(rawValue: String.Encoding.utf8.rawValue))!
        
        let base64Credentials = credentialData.base64EncodedString()
        
        
        let headers = [
            "Authorization": "Basic \(base64Credentials)",
            "Accept": "application/json",
            "Content-Type": "application/json" ]
        
        
        let postString = appConstants.showPersonURL
        print(" person Name Api:\(postString)")
        
        Alamofire.request(postString, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseJSON
            {
                
                response in
                do {
                    if let mdata = response.data
                    {
                        if mdata.isEmpty
                        {
                            print("no data available")
                            return
                        }
                    }
                    // Parsing Data
                    let responseArray =  try JSONSerialization.jsonObject(with: response.data!, options: JSONSerialization.ReadingOptions()) as!  NSDictionary
                    
                    print(responseArray)
                    if  responseArray.count > 0
                    {
                        self.delegate?.apiSuccessResponse(responseArray)
                    }
                    else
                    {
                        self.delegate?.APIFailureResponse("Error...")
                    }
                }
                catch
                {
                    print("error")
                }
        }
    }
    
}
