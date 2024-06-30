//
//  RideRequestView.swift
//  UberGo
//
//  Created by Khusrav Safiev on 6/27/24.
//

import SwiftUI

struct RideRequestView: View {
    @State private var selectedRideType: RideType = .uberX
    @EnvironmentObject var locationVM: LocationSearchViewModel
   
    var body: some View {
        VStack {
            Capsule()
                .foregroundStyle(Color(.systemGray5))
                .frame(width: 48, height: 6)
                .padding(.top, 8)
            
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
                        
                        Text(locationVM.pickupTime ?? "")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(.gray)
                    }
                    .padding(.bottom)
                    
                    HStack{
                        if let location = locationVM.selectedUberLocation {
                            Text(location.title)
                                .font(.system(size: 16, weight: .semibold))
                        }
                            
                        
                        Spacer()
                        
                        Text(locationVM.dropOffTime ?? "")
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
                    ForEach (RideType.allCases) { type in
                        VStack(alignment: .leading) {
                            Image(type.imageName)
                                .resizable()
                            .scaledToFit()
                            
                            VStack(alignment: .leading, spacing: 4) {
                                
                                Text(type.description)
                                    .font(.system(size: 14, weight: .semibold))
                                
                                Text(locationVM.computeRidePrice(forType: type).toCurrency())
                                    .font(.system(size: 14, weight: .semibold))
                                
                            }
                            .padding(8)
                            .padding(.bottom, 8)
                        }
                        .frame(width: 112, height: 140)
                        .foregroundStyle(type == selectedRideType ? .white : .black)
                        .background(Color(type == selectedRideType ? .systemBlue : .systemGroupedBackground))
                        .scaleEffect(type == selectedRideType ? 1.2 : 1.0)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .onTapGesture {
                            withAnimation(.spring()) {
                                selectedRideType = type
                            }
                        }
                       

                    }
                }
                .padding(.leading)
            }
            
            
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
        .padding(.bottom)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
        
    }
}


#Preview {
    RideRequestView()
}


 


