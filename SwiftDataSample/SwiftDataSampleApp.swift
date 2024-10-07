//
//  SwiftDataSampleApp.swift
//  SwiftDataSample
//
//  Created by Athoya on 25/09/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataSampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ExpenseItem.self)
        }
    }
}
