//
//  PlayData.swift
//  CICD
//
//  Created by Atif Saeed on 21/02/2025.
//  Copyright © 2025 SYSTEMS LTD. All rights reserved.
//

import Foundation

class Vehicle {
    private var miles = 0
    private var type: VehicleType
    
    init(type: VehicleType) {
        self.type = type
    }
    
    func startEngine(minutes: Int) {
        var speed = 0
        
        switch type {
        case .PassengerAircraft:
            speed = 575
        case .FighterJet:
            speed = 1320
        case .HighSpeedTrain:
            speed = 217
        case .Car:
            speed = 100
        case .Bicycle:
            speed = 10
        }

        self.miles = speed * (minutes / 60)
    }
    
    func returnMiles() -> Int {
        return self.miles
    }
}

enum VehicleType {
    case PassengerAircraft
    case FighterJet
    case HighSpeedTrain
    case Car
    case Bicycle
}
