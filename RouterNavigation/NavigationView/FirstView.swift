//
//  FirstView.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 25.11.2024.
//

import SwiftUI

struct FirstView: View {
    @Environment(Router.self) private var router: Router
    
    var body: some View {
        List {
            Button("Go to Next") {
                router.homeRouter.append(.second)
            }
            Button("Pop to Root") {
                router.homeRouter.removeAll()
            }
        }
        .navigationDestination(for: HomeRouter.self) { router in
            router.destination
        }
    }
}

#Preview {
    FirstView()
        .environment(Router())
}
