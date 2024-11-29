//
//  AppTabView.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 25.11.2024.
//

import SwiftUI

struct AppTabView: View {
    
    @State private var isLink = false
    @Environment(Router.self) private var router: Router
    
    var body: some View {
        @Bindable var router = router
        TabView(selection: $router.selection) {
            ForEach(AppTab.allCases) { tab in
                Tab(value: tab) {
                    tab.destination
                } label: {
                    tab.label
                }
            }
        }
        .onAppear {
            router.selection = isLink ? .star : .home
            if isLink {
                router.starRouter.append(.star2)
            }
        }
    }
}

#Preview {
    AppTabView()
        .environment(Router())
}
