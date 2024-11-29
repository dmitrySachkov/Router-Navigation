//
//  RouterNavigationApp.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 25.11.2024.
//

import SwiftUI

@main
struct RouterNavigationApp: App {
    
    @State private var router = Router()
    
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environment(router)
        }
    }
}
