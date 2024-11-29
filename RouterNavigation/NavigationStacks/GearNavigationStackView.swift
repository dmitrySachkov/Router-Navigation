//
//  GearNavigationStackView.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 25.11.2024.
//

import SwiftUI

struct GearNavigationStackView: View {
    
    @Environment(Router.self) private var router: Router
    
    var body: some View {
        @Bindable var router = router
        NavigationStack(path: $router.gearRouter) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}
