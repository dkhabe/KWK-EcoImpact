//
//  Question5.swift
//  EcoImpactTests
//
//  Created by Tanisha Khabe on 6/27/24.
//

import SwiftUI

struct Question5: View {
    
    @State private var emits = "_"
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
                        Text("Which mode of transportation do you take the most often?")
                            .multilineTextAlignment(.center)
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.742, saturation: 0.193, brightness: 0.579))
                        
                        HStack {
                            Button("walking") {
                                emits = "doesn't emit"
                                suggestion = "Rock on! What a way to get in those steps too!"
                                showSuggestion = false
                            }
                            Button("bike") {
                                emits = "doesn't emit"
                                suggestion = "Great choice! Not only fast, but also eco-friendly."
                                showSuggestion = false
                            }
                            Button("public transit") {
                                emits = "emits some"
                                suggestion = "Good option! According to the UN, buses and trains can reduce greenhouse gas emissions by almost two thirds per passenger."
                                showSuggestion = false
                            }
                            Button("motorcycle") {
                                emits = "emits a lot of"
                                suggestion = "While motorcycles don’t emit as much carbon as cars, they emit much more hydrocarbons and nitrogen oxide, which create smog."
                                showSuggestion = false
                            }
                            Button("car") {
                                emits = "emits a lot of"
                                suggestion = "Maybe try taking another mode next time. Or carpool with a few neighbors/friends! This way, less cars are on the road, and less carbon is emitted."
                                showSuggestion = false
                            }
                        }
                        .padding(/*@START_MENU_TOKEN@*/.vertical, 10.0/*@END_MENU_TOKEN@*/)
                        Text("Your mode of transportation \(emits) carbon and other gases.")
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
                        
                        Button("Get my suggestion!") {
                            //Text("\(suggestion)")
                            showSuggestion = true
                            
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                        if showSuggestion {
                            Text("\(suggestion)")
                                .multilineTextAlignment(.center)
                        }
                        
                        NavigationLink(destination: Question6()) {
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
    Question5()
}
