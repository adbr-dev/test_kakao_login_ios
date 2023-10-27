//
//  testKakaoAppApp.swift
//  testKakaoApp
//
//  Created by Dabo Developer on 2023/10/27.
//

import SwiftUI

@main
struct testKakaoAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
