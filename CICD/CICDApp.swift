//
//  CICDApp.swift
//  CICD
//
//  Created by Atif Saeed on 18/02/2025.
//  Copyright © 2026 SYSTEMS LTD. All rights reserved.
//

import SwiftUI
import SwiftData

@main
struct CICDApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
