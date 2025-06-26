//
//  HoneymoonApp.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 6/26/25.
//

import SwiftUI

@main
struct HoneymoonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
