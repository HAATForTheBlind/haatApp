//
//  File.swift
//  haatApp
//
//  Created by Reza Madhavan on 2/15/20.
//  Copyright © 2020 Reza Madhavan. All rights reserved.
//

import Foundation
import CoreBluetooth

class BluetoothManager : NSObject, CBCentralManagerDelegate{
    
    static let shared = BluetoothManager()
    var manager: CBCentralManager!
    
    func centralManagerDidUpdateState(_ central: CBCentralManager){
        switch central.state{
            
        case .unknown:
          print("central.state is .unknown")
        case .resetting:
          print("central.state is .resetting")
        case .unsupported:
          print("central.state is .unsupported")
        case .unauthorized:
          print("central.state is .unauthorized")
        case .poweredOff:
          print("central.state is .poweredOff")
        case .poweredOn:
          print("central.state is .poweredOn")
        }
    }
    
    override init() {
        super.init()
        manager = CBCentralManager(delegate: self, queue: nil)
        print("hello world")
        
    }
    
    
    
    
    
    
    
}
