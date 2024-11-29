//
//  HomeNavigationStackView.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 25.11.2024.
//

import SwiftUI

struct HomeNavigationStackView: View {
    
    @Environment(Router.self) private var router
    
    var body: some View {
        @Bindable var router = router
        NavigationStack(path: $router.homeRouter) {
            HomeView()
        }
    }
}
