//
//  Question7.swift
//  EcoImpactTests
//
//  Created by Tanisha Khabe on 6/28/24.
//

import SwiftUI

struct Question7: View {
    
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
                        Text("You head out to purchase some groceries. Which of these bags do you reach for?")
                            .multilineTextAlignment(.center)
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.742, saturation: 0.193, brightness: 0.579))
                        
                        HStack {
                            Button(" reusable bag ") {
                                suggestion = "This is the best choice for grocery bags! If you keep using reusable bags, you’re on track to replace anywhere from 100 to 1,000 plastic bags!"
                                showSuggestion = false
                            }
                            Button(" paper bag ") {
                                suggestion = "This is a great choice for your groceries as they are recyclable! Though, reusable bags are the optimal choice."
                                showSuggestion = false
                            }
                            
                            Button(" plastic bag ") {
                                suggestion = "Try using another bag next time! However, some people use plastic bags to line their trash cans instead of throwing the plastic bag straightaway. This is fine also!"
                                showSuggestion = false
                            }
                        }
                        .padding(/*@START_MENU_TOKEN@*/.vertical, 10.0/*@END_MENU_TOKEN@*/)
                        Button("Get my suggestion!") {
                            showSuggestion = true
                            
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                        
                        if showSuggestion {
                            Text("\(suggestion)")
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
                        }
                        
                        NavigationLink(destination: Question8()) {
                            Text("Next Question →")
                        }
                        .padding(.all, 10.0)
                        .multilineTextAlignment(.center)
                        
                    }
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    Question7()
}

