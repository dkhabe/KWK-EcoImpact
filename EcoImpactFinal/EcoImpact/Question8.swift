import SwiftUI

struct Question8: View {
    
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
                        Text("You see some drying carrots in your fridge. What do you do about them?")
                            .multilineTextAlignment(.center)
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.742, saturation: 0.193, brightness: 0.579))
                        
                        HStack {
                            Button(" cook them ") {
                                suggestion = "Nice! This is a great way to turn what would’ve been thrown away into something awesome! Doing so gives it new life, and eliminates waste from landfills. Around 1/3 of the world’s food supply is thrown away."
                                showSuggestion = false
                            }
                            Button(" compost them ") {
                                suggestion = "Great! Composting is a great practice if your dwelling allows for it. This prevents food waste, which is responsible for 8% of worldwide carbon emissions."
                                showSuggestion = false
                            }
                            Button(" toss them ") {
                                suggestion = "Sometimes, this is the only option, such as when you see mold start to sprout. However, in most cases dying produce can be composted or whipped up into something delicious!"
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
                        
                        NavigationLink(destination: QuizEnd()) {
                            Text("Continue →")
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
    Question8()
}

