//
//  Routers.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 25.11.2024.
//

import SwiftUI

enum HomeRouter: Hashable {
    case home
    case first
    case second
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .home:
            HomeView()
        case .first:
            FirstView()
        case .second:
            SecondView()
        }
    }
}

enum StarRouter: Hashable {
    case star1
    case star2
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .star1:
            StarHomeView()
        case .star2:
            StarLastView()
        }
    }
}

enum GearRouter: Hashable {
    case gear
    case gear2
    case gear3
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .gear:
            Text("Gear 1")
        case .gear2:
            Text("Gear 2")
        case .gear3:
            Text("Gear 3")
        }
    }
}
