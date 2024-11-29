//
//  HomeView.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 25.11.2024.
//

import SwiftUI

struct HomeView: View {
    
    @Environment(Router.self) private var router: Router
    
    var body: some View {
        List {
            Button("Go to Next") {
                router.homeRouter.append(.first)
            }
        }
        .navigationDestination(for: HomeRouter.self) { router in
            router.destination
        }
    }
}

#Preview {
    HomeView()
        .environment(Router())
}
