//
//  TCA_ArchitectureApp.swift
//  Shared
//
//  Created by gunoo on 2022/08/22.
//

import SwiftUI

@main
struct TCA_ArchitectureApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
