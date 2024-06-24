//
//  HomeView.swift
//  UberGo
//
//  Created by Khusrav Safiev on 6/25/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
