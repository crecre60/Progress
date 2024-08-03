//
//  ProgressApp.swift
//  Progress
//
//  Created by Young Ju on 8/3/24.
//

import SwiftUI

@main
struct ProgressApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
