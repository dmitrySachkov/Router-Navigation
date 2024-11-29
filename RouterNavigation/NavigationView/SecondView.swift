//
//  SecondView.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 25.11.2024.
//

import SwiftUI

struct SecondView: View {
    @Environment(Router.self) private var router: Router
    
    var body: some View {
        List {
            Button("Pop to Root") {
                router.homeRouter.removeAll()
            }
            
            Button("Go to Star") {
                router.selection = .star
            }
            
            Button("Go to Star last") {
                router.selection = .star
                router.starRouter.append(.star2)
            }
        }
        .navigationDestination(for: HomeRouter.self) { router in
            router.destination
        }
        .navigationDestination(for: StarRouter.self) { router in
            router.destination
        }
    }
}

#Preview {
    SecondView()
        .environment(Router())
}
