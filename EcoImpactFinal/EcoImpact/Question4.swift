//
//  Question4.swift
//  EcoImpactTests
//
//  Created by Tanisha Khabe on 6/27/24.
//

import SwiftUI

struct Question4: View {
    
    @State private var hours : Double = 50
    @State private var isEditing = true
    var body: some View {
            
            Text("How many hours do you travel by plane each year?")
                .multilineTextAlignment(.center)
                .padding()
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.742, saturation: 0.193, brightness: 0.579))
            
            
            Slider (
                value: $hours,
                in: 20...100,
                step: 10
            ) {
                Text("")
            } minimumValueLabel: {
                Text("<20")
            } maximumValueLabel: {
                Text("100+")
            } onEditingChanged: { editing in
                isEditing = editing
            }
            .padding()
            Text("\(Int(hours)) hours")
                .foregroundColor(isEditing ? .blue : .black)
            
            if hours <= 40 && isEditing == false {
                Text("Great job! Not flying frequently can help to lower global warming.")
                    .padding()
                    .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
                
            } else if hours >= 50 && hours <= 70 && isEditing == false {
                Text("This is the average amount of hours people spend in the air per year. Planes are responsible for 12% of all transport emission.")
                    .padding()
                    .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
                
            } else if hours >= 80 && isEditing == false {
                Text("Planes emit 200 pounds of carbon per hour! If possible, try driving or taking public transit to lessen your impact on the environment.")
                    .padding(/*@START_MENU_TOKEN@*/.vertical, 10.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hue: 0.434, saturation: 0.278, brightness: 0.553))
            } else {
                
            }
            
            NavigationLink(destination: Question5()) {
                Text("Next Question →")
            }
            .padding(.all, 10.0)
            .multilineTextAlignment(.center)
        }
    }

#Preview {
    Question4()
}
