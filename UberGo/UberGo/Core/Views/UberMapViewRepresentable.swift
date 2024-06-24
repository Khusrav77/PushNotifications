//
//  UberMapViewRepresentable.swift
//  UberGo
//
//  Created by Khusrav Safiev on 6/25/24.
//


import MapKit
import SwiftUI

struct UberMapViewRepresentable: UIViewRepresentable {
    
    
    let mapView = MKMapView()
    
    func makeUIView(context: Context) -> some UIView {
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}
    extension UberMapViewRepresentable {
        
        class MapCoordinator: NSObject, MKMapViewDelegate {
            let parent: UberMapViewRepresentable
            
            init(parent: UberMapViewRepresentable) {
                self.parent = parent
                super.init()
            }
        }
    }

