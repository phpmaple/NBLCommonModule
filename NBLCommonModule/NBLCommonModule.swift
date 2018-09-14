//
//  NBLCommonModule.swift
//  NBLCommonModule
//
//  Created by koofrank on 2018/9/15.
//  Copyright © 2018年 com.nbltrustdev. All rights reserved.
//
import Alamofire

public class CommonModuleTest {
    public init(){}
    
    public func test() {
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
    }
}
