//
//  RideType.swift
//  UberGo
//
//  Created by Khusrav Safiev on 6/28/24.
//

import SwiftUI

enum RideType: Int, CaseIterable, Identifiable {
    case uberX
    case uberBlack
    case uberXL
    
    var id: Int { return rawValue }
    
    var description: String {
        switch self {
        case .uberX: return "UberX"
        case.uberBlack: return "UberBlack"
        case.uberXL: return "UberXL"
        }
    }
    
    var imageName: String {
        switch self {
        case .uberX: return "uber_x"
        case.uberBlack: return "uber_black"
        case.uberXL: return "uber_xl"
        }
    }
}