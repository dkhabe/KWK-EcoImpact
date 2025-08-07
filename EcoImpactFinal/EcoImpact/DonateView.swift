//
//  DonateView.swift
//  EcoImpact
//
//  Created by Emily Luu on 6/27/24.
//

import SwiftUI

struct DonateView: View {
@State private var totalDonations = 0
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Color1")
                    .ignoresSafeArea()
                VStack {
                    Text("")
                        .font(.largeTitle)
                    Text("Fundraisers & Organizations")
                        .foregroundColor(Color(hue: 0.742, saturation: 0.193, brightness: 0.579))
                        .font(.title)
                        .fontWeight(.bold) 
                        .padding()
                   
                            

            VStack {
                                    
                                    Text("Click on a Star to Donate!")
                                        .padding()
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
                                    
                                    Text("All the donations go to the climate change cause and organizations and fundraisers down below!")
                                        .padding()
                                        .multilineTextAlignment(.center)
                                    
                                    Text("Do your part to help the environment!")
                                        .padding()
                                    
                                    Button(action: {
                    
                                        totalDonations += 5
                                    
                                    }) {
                                        Label("$5", systemImage: "star.fill")
                                            .labelStyle(.iconOnly)
                                    }
                                    .padding()  
                Text("Raised: $\(totalDonations) so far.")
                    .padding()
                    .background {
                        Color("Color2")
                            .cornerRadius(15)
                    }
                                }
                            }
                        }

            
                        


            
            
        }
        
    }
}


#Preview {
    DonateView()
}
