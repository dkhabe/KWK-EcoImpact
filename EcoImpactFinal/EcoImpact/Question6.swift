//
//  Question6.swift
//  EcoImpactTests
//
//  Created by Tanisha Khabe on 6/28/24.
//

import SwiftUI

struct Question6: View {
    
    @State private var pounds = "_"
    @State private var suggestion = ""
    @State private var showSuggestion = false
    
    var body: some View {
        ZStack {
            Color("Color1")
                .ignoresSafeArea()
            
            NavigationStack {
                
                ZStack {
                    Color("Color1")
                        .ignoresSafeArea()
                    
                    VStack {
                        Text("How many days a week do you recycle?")
                            .multilineTextAlignment(.center)
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.742, saturation: 0.193, brightness: 0.579))
                        
                        HStack {
                            Button(" every day ") {
                                pounds = "9.8"
                                suggestion = "You’re helping conserve key natural resources, decreasing the need to extract them. Recycling is still a work in progress for many public places and homes, but kudos to you for doing your part!"
                                showSuggestion = false
                            }
                            Button(" 5 days ") {
                                pounds = "7"
                                suggestion = "A good start, but try aiming for every day if you can!"
                                showSuggestion = false
                            }
                            
                            Button(" 3 days or less ") {
                                pounds = "4.2"
                                suggestion = "Try recycling an extra day each week! These efforts might seem small, but can make a big difference. Recycling reduces greenhouse gas emissions, and therefore reduces the consumption of energy."
                                showSuggestion = false
                            }
                        }
                        .padding(.vertical, 10.0)
                        Text("You recycle \(pounds) pounds of trash each week.")
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
                        Button("Get my suggestion!") {
                            showSuggestion = true
                            
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                        
                        if showSuggestion {
                            Text("\(suggestion)")
                                .multilineTextAlignment(.center)
                        }
                        
                        NavigationLink(destination: Question7()) {
                            Text("Next Question →")
                        }
                        .padding(.all, 10.0)
                        .multilineTextAlignment(.center)
                        
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    Question6()
}

