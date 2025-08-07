

import SwiftUI
struct ContentView: View {
    var body: some View {
        
        
        NavigationStack {
            ZStack {
                Color("Color1")
                    .ignoresSafeArea()
                
                VStack {
                    
                    Image(systemName: "leaf")
                        .renderingMode(.template)
                        .foregroundColor(Color(hue: 0.44, saturation: 0.266, brightness: 0.587))
                        .fontWeight(.bold)
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    
                    Text("EcoImpact")
                        .foregroundColor(Color(hue: 0.742, saturation: 0.193, brightness: 0.579))
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Hi! This is EcoImpact, an app that helps give sustainable lifestyle suggestions. Together, little by little, we each can help make a difference and contribute to a greener world.")
                        .font(.callout)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
                        .padding()
                    
                    NavigationLink(destination: SecondView()) {
                        Text("Take the Sustainability Quiz!")
                            .font(.callout)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.117, brightness: 0.303))
                            .frame(width: 200.0, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                    }
                    .foregroundColor(.black)
                    .background {
                        Color("Color2")
                            .cornerRadius(15)
                    }
                    .padding()
                    
                    NavigationLink(destination: DonateView()) {
                        Text("Donate ♥︎")
                            .font(.callout)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.117, brightness: 0.303))
                            .frame(width: 200.0, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                    }
                    .background {
                        Color("Color2")
                            .cornerRadius(15)
                    }
                    .padding()
                    
                    NavigationLink(destination:
                                    MoreTips()) {
                        Text("More Tips")
                            .font(.callout)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.117, brightness: 0.303))
                            .frame(width: 200.0, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                    }
                                    .background {
                                        Color("Color2")
                                            .cornerRadius(15)
                                    }
                                    .padding()
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
