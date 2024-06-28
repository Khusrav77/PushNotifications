//
//  HomeView.swift
//  UberGo
//
//  Created by Khusrav Safiev on 6/25/24.
//

import SwiftUI

struct HomeView: View {
    @State private var mapState = MapViewState.noInput
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            ZStack(alignment: .top){
             
                
                UberMapViewRepresentable(mapState: $mapState)
                    .ignoresSafeArea()
                
                if mapState == .searchForLocation {
                    LocationSearchView(mapState: $mapState)
                    
                } else if mapState == .noInput {
                    LocationSearchActivationView()
                        .padding(.top, 72)
                        .onTapGesture {
                            withAnimation (.spring()){
                                mapState = .searchForLocation
                            }
                        }
                }
                
                MapViewActionButton(mapState: $mapState)
                    .padding(.leading)
                    .padding(.top, 4)
            }
            
            if mapState == .locationSelected {
                RideRequestView()
                    .transition(.move(edge: .bottom))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    HomeView()
}
