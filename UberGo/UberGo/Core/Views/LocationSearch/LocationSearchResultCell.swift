//
//  LocationSearchResultCell.swift
//  UberGo
//
//  Created by Khusrav Safiev on 6/25/24.
//

import SwiftUI

struct LocationSearchResultCell: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack{
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.body)
                    
                Text(subtitle)
                    .font(.system(size: 15))
                    .foregroundStyle(.gray)
                Divider()
            }
            .padding(.leading, 8)
            .padding(.vertical, 8)
        }
        .padding(.leading)
    }
}

#Preview {
    LocationSearchResultCell(title: "Starbucks Coffe", subtitle: "123 Main St, Cupertiono CA")
}