//
//  UberGoApp.swift
//  UberGo
//
//  Created by Khusrav Safiev on 6/24/24.
//

import SwiftUI

@main
struct UberGoApp: App {
    
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
