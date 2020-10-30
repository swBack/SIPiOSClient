//
//  iOConnector.swift
//  SIPiOSClient
//
//  Created by SungWoo Back on 2020/10/29.
//

import Foundation
import SocketRocket

public class iOConnector:NSObject{
    private let socket:SRWebSocket
    
    init(_ IOConfig:IOConfigurator) {
        self.socket = SRWebSocket(IOConfig)
        super.init()
    }
    
    public func conenct(){
        socket.delegate = self
        socket.open()
    }
}


extension iOConnector:SRWebSocketDelegate{
    public func webSocket(_ webSocket: SRWebSocket!, didReceiveMessage message: Any!) {
        print("socket message received")
        print(message)
    }
    
    public func webSocketDidOpen(_ webSocket: SRWebSocket!) {
        print("socket open")
    }
    
    public func webSocket(_ webSocket: SRWebSocket!, didFailWithError error: Error!) {
        print(error.localizedDescription)
    }
    
    public func webSocket(_ webSocket: SRWebSocket!, didCloseWithCode code: Int, reason: String!, wasClean: Bool) {
        print(reason)
        print(code)
    }
}

extension SRWebSocket{
    convenience init(_ configure:IOConfigurator) {
        self.init(url: configure.url, protocols: [configure.protocol])
    }
}
