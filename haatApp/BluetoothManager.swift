//
//  CentralManager.swift
//  haatApp
//
//  Created by Reza Madhavan on 11/3/19.
//  Copyright © 2019 Reza Madhavan. All rights reserved.
//

import Foundation
import CoreBluetooth
import RxBluetoothKit

class BluetoothManager{
        
    static let shared = BluetoothManager()
    var options: [String:AnyObject]
    var manager: CentralManager
    var state: BluetoothState
        
    init(){
        options = [CBCentralManagerOptionRestoreIdentifierKey: "RestoreIdentifierKey"] as [String: AnyObject]
        manager = CentralManager(queue: .main, options: options, onWillRestoreCentralManagerState: { restoredState in
            let restoredPeripherals = restoredState.peripherals
            let restoredScanOptions = restoredState.scanOptions
            let restoredServices = restoredState.services
        })
        state = manager.state
    }
        
    func getDeviceList() -> [String: String]{
        manager.observeState()
        .startWith(state)
        .filter { $0 == .poweredOn }
        .take(1)
        .flatMap { _ in self.manager.scanForPeripherals(withServices: nil) }
        return ["String": "Ok"]
    }
    
    func connectDevice() -> String{
        /*  manager.observestate()
            .take(1)
            .flatMap { $0.peripheral.establishConnection() }
            .subscribe(onNext: { peripheral in
                 print("Connected to: \(peripheral)")
            })
         */
        return "Success"
    }
    
    //add event listener for output (NSNotification)
    
    func readOutput() -> String{
        return "123"
    }
        
}
