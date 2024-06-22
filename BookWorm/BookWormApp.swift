//
//  BookWormApp.swift
//  BookWorm
//
//  Created by Buhle Radzilani on 2024/06/22.
//

import SwiftUI

@main
struct BookWormApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
