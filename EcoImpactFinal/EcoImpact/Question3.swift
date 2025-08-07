import SwiftUI

struct Question3: View {
    
    @State private var frequency = "_"
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
                        Text("How many new pieces of clothing do you buy each year?")
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 10.0)
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.742, saturation: 0.193, brightness: 0.579))
                        
                        HStack {
                            Button(" <15 ") {
                                frequency = "4-6 months"
                                suggestion = "Buying less new clothes reduces waste and conserves resources. Great job!"
                                showSuggestion = false
                            }
                            Button(" 15-30 ") {
                                frequency = "2-3 months"
                                suggestion = "Buying less new clothes reduces waste and conserves resources. Great job!"
                                showSuggestion = false
                            }
                            Button(" upto 50 ") {
                                frequency = "month"
                                suggestion = "This is the amount of clothes the average person buys in a year. This number isn't completely bad, so you can try to buy second-hand clothes to reduce your impact on the environment!"
                                showSuggestion = false
                            }
                            Button(" 51-75 ") {
                                frequency = "2 weeks"
                                suggestion = "Try to buy new clothes less frequently. It can take 2,700 liters of water (or more) to make one item of clothing, which can have a bad impact on the planet."
                                showSuggestion = false
                            }
                            Button(" 75+ ") {
                                frequency = "week"
                                suggestion = "Try to buy new clothes less frequently. It can take 2,700 liters of water (or more) to make one item of clothing, which can have a bad impact on the planet."
                                showSuggestion = false
                            }
                        }
                        .padding(/*@START_MENU_TOKEN@*/.vertical, 10.0/*@END_MENU_TOKEN@*/)
                        Text("Overall, you purchase a few items of clothing every \(frequency).")
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
                        
                        Button("Get my suggestion!") {
                            showSuggestion = true
                            
                        }
                        .background {
                            Color("Color2")
                                .cornerRadius(15)
                                .foregroundColor(.black)
                                .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                        }
                        
                            if showSuggestion {
                                Text("\(suggestion)")
                                    .multilineTextAlignment(.center)
                            }
                            
                            NavigationLink(destination: Question4()) {
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
    Question3()
}
