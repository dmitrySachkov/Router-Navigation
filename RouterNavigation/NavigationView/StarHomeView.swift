//
//  StarHomeView.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 29.11.2024.
//

import SwiftUI

struct StarHomeView: View {
    
    @Environment(Router.self) private var router: Router
    
    var body: some View {
        List {
            Button("Go to second") {
                router.starRouter.append(.star2)
            }
        }
        .navigationDestination(for: StarRouter.self) { router in
            router.destination
        }
    }
}

#Preview {
    StarHomeView()
}
