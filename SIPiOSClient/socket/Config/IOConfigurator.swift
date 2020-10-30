//
//  IOConfigurator.swift
//  SIPiOSClient
//
//  Created by SungWoo Back on 2020/10/29.
//

import Foundation

class IOConfigurator{
    let url:URL!
    let `protocol`:String
    
    init(server url:String, ptl:String) {
        self.url = URL(string: url)!
        self.protocol = ptl
    }
    
    class func defaultConfig() -> IOConfigurator{
        return IOConfigurator(server: "wss://edge.sip.onsip.com",ptl: "sip")
    }
}
