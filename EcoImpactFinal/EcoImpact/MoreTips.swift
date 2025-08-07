//
//  MoreTips.swift
//  EcoImpact
//
//  Created by Emily Luu on 6/27/24.
//

import SwiftUI

struct MoreTips: View {
    var body: some View {
        
        ZStack {
            Color("Color1")
                .ignoresSafeArea()
            VStack {
                
                Image(systemName: "tree")
                    .renderingMode(.template)
                    .foregroundColor(Color(hue: 0.44, saturation: 0.266, brightness: 0.587))
                    .fontWeight(.bold)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text("More Tips to Stay Green")
                    .foregroundColor(Color(hue: 0.742, saturation: 0.193, brightness: 0.579))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
               Text("Avoid single-use plastics (when possible)")
                    .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
                    .padding()
                    .fontWeight(.bold)
                
                Text("By purchasing a reusable water bottle, you could save 1,500 plastic water bottles per year and $3,000.")
                    .padding([.leading, .bottom, .trailing])
                    .multilineTextAlignment(.center)
                
                Text("Purchase sustainable products")
                     .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
                     .padding()
                     .fontWeight(.bold)
                 
                 Text("From clothes that will last you many wears, to plant-based beauty products, it helps to pay attention to the brands you’re purchasing from, the product quality, and the product’s materials and ingredients.")
                     .padding([.leading, .bottom, .trailing])
                     .multilineTextAlignment(.center)
                
                Text("Cook from home")
                     .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
                     .padding()
                     .fontWeight(.bold)
                
                Text("Try to cook more meals from home instead of ordering takeout or dining in restaurants. The average restaurant spends 65% of its energy on sanitation, lighting, and refrigeration. It’s okay to do so once in a while though!")
                    .padding([.leading, .bottom, .trailing])
                    .multilineTextAlignment(.center)
                
                Text("Thank you for using EcoImpact!")
                    .font(.caption)
                    .padding()
                    .background {
                        Color("Color2")
                            .cornerRadius(15)
                    }
                    .padding()
            }
        }
    }
}
#Preview {
    MoreTips()
}
