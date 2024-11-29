//
//  Router.swift
//  RouterNavigation
//
//  Created by Dmitry Sachkov on 25.11.2024.
//

import SwiftUI
import Observation


@Observable
class Router {
    var selection: AppTab = .home
    var homeRouter: [HomeRouter] = []
    var starRouter: [StarRouter] = []
    var gearRouter: [GearRouter] = []
}
