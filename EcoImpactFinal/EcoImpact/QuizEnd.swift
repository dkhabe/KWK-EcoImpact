//
//  QuizEnd.swift
//  EcoImpactTests
//
//  Created by Tanisha Khabe on 6/28/24.
//

import SwiftUI

struct QuizEnd: View {
    
    var body: some View {
        ZStack {
            Color("Color1")
                .ignoresSafeArea()
            
            NavigationStack {
                ZStack {
                    Color("Color1")
                        .ignoresSafeArea()
                    
                    VStack {
                        Text("Thank you for taking the Environmental Sustainability Quiz!")
                            .multilineTextAlignment(.center)
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.742, saturation: 0.193, brightness: 0.579))
                            .fontWeight(.bold)
                        
                        NavigationLink(destination: ContentView()) {
                            Text("Home")
                        }
                        .padding(.all, 10.0)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        
                        NavigationLink(destination: MoreTips()) {
                            Text("Want more tips on staying green?")
                        }
                        padding(.all, 10.0)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        
                        NavigationLink(destination: DonateView()) {
                            Text("Donate")
                        }
                        .padding(.all, 10.0)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    }
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    QuizEnd()
}
