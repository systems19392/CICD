//
//  Item.swift
//  CICD
//
//  Created by Atif Saeed on 18/02/2025.
//  Copyright © 2025 SYSTEMS LTD. All rights reserved.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
