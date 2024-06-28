//
//  RideRequestView.swift
//  UberGo
//
//  Created by Khusrav Safiev on 6/27/24.
//

import SwiftUI

struct RideRequestView: View {
    var body: some View {
        VStack {
            Capsule()
                .foregroundStyle(Color(.systemGray5))
                .frame(width: 48, height: 6)
            
            // TRIP INFO VIEW
            HStack{
                // indicator view
                VStack{
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 8, height: 8)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 32)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width: 8, height: 8)
                }
                
                VStack(alignment: .leading, spacing: 24){
                    HStack{
                        Text("Current location")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(.gray)
                        
                        Spacer()
                        
                        Text("1:30 PM")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(.gray)
                    }
                    .padding(.bottom)
                    
                    HStack{
                        Text("Starbucks Coffee")
                            .font(.system(size: 16, weight: .semibold))
                            
                        
                        Spacer()
                        
                        Text("1:45 PM")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(.gray)
                    }
                    
                }
                .padding(.leading)
            }
            .padding()
            
            Divider()
      
            // RIDE OPTION VIEW
            Text("SUGGESTED RIDES")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding()
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal) {
                HStack(spacing: 12) {
                    ForEach (0..<3, id: \.self) {_ in
                        VStack(alignment: .leading) {
                            Image("uber")
                                .resizable()
                            .scaledToFit()
                            
                            VStack(alignment: .leading, spacing: 4){
                                Text("UberX")
                                    .font(.system(size: 14, weight: .semibold))
                                
                                Text("$22")
                                    .font(.system(size: 14, weight: .semibold))
                                
                                
                            }
                            .padding(8)
                        }
                        .frame(width: 112, height: 140)
                        .background(Color(.systemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                       

                    }
                }
            }
            .padding(.horizontal)
            
            Divider()
                .padding(.vertical, 8)
            
            // PAYMENT OPTION VIEW
            HStack(spacing: 12){
                Text("Visa")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(6)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    .foregroundStyle(.white)
                    .padding(.leading)
                
                Text("****1234")
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .imageScale(.medium)
                    .padding()
            }
            .frame(height: 50)
            .background(Color(.systemGroupedBackground))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal)
            
            
            // REQUEST RIDE BUTTON
            Button {
                
            }label: {
               Text("CONFIRM RIDE")
                    .fontWeight(.bold)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(.white)
                    .padding(.vertical, 8)
            }
        }
        .background(.white)
    }
}


#Preview {
    RideRequestView()
}


 


