//
//  AppScreen.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 25.11.2024.
//

import SwiftUI

enum AppTab: Hashable, Identifiable, CaseIterable {
    case home
    case star
    case gear
    
    var id: AppTab { self }
    
    @ViewBuilder
    var label: some View {
        switch self {
        case .home:
            Label("Home", systemImage: "house.fill")
        case .star:
            Label("Star", systemImage: "star.fill")
        case .gear:
            Label("Gear", systemImage: "gear")
        }
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .home:
            HomeNavigationStackView()
        case .star:
            StarNavigationStackView()
        case .gear:
            GearNavigationStackView()
        }
    }
}
