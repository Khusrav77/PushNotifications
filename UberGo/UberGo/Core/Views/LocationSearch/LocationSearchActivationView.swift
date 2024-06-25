//
//  LocationSearchActivationView.swift
//  UberGo
//
//  Created by Khusrav Safiev on 6/25/24.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        
        HStack {
            Rectangle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
            .padding(.horizontal)
            
            
            Text("Куда едем?")
                .foregroundStyle(Color.gray)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 64, height: 50)
        .background(
            Rectangle()
                .fill(Color.white)
                .shadow(radius: 6))
    }
}

#Preview {
    LocationSearchActivationView()
}
