//
//  StarLastView.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 28.11.2024.
//

import SwiftUI

struct StarLastView: View {
    
    @Environment(Router.self) private var router: Router
    
    var body: some View {
        List {
            Button("Pop to root") {
                router.starRouter.removeAll()
            }
            Button("Go back") {
                router.selection = .home
            }
        }
        .navigationDestination(for: StarRouter.self) { router in
            router.destination
        }
    }
}

#Preview {
    StarLastView()
        .environment(Router())
}
