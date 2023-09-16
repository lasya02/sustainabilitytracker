//
//  IntakeForm.swift
//  SustainabilityTracker
//
//  Created by Lasya Kambhampati on 9/12/23.
//

import SwiftUI

struct IntakeForm: View {
    
    @State private var household: Int = 0
    @State private var commute: String = ""
    @State private var carType: String = ""
    @State private var extraInformation: String = ""
    
    var body: some View {
        VStack{
            Form{
                Section(header: Text("Tell us about your current lifestyle").foregroundColor(Color.white)) {
                    
                    VStack{
                        Text("How many people do you live with?")

                        Picker("How many people live in your house", selection: $household) {
                            Text("0-3").tag(household)
                            Text("3-6").tag(household)
                            Text("6+").tag(household)
                        }
                        .pickerStyle(.segmented)
                       
                    }
                    
                    Picker("How do you commute to work/school", selection: $commute) {
                        Text("public transportation").tag(commute)
                        Text("walk").tag(commute)
                        Text("bike").tag(commute)
                        Text("Uber").tag(commute)
                        Text("Car").tag(commute)
                    }
                    
                    Picker("If you own a car, what type is it? ", selection: $carType) {
                        Text("gasoline").tag(carType)
                        Text("hybrid").tag(carType)
                        Text("electric").tag(carType)
                    }
                    
                    HStack {
                        Text("Current Sustainable Actions: ")
                        TextField(
                                "List a few things that you consciously choose to do on a daily basis",
                                text: $extraInformation
                            )
                        .padding(.all)
                    }
                }
            }
            .tint(Color("DarkGreen"))
            .scrollContentBackground(.hidden)
            
            NavigationLink(destination: {
                Dashboard()
            }, label: {
                VStack(alignment:.trailing){
                    Text("Let's See Your Results")
                        .foregroundColor(Color.white)
                }
            })
        }
        .background(Color("DarkGreen").opacity(0.9).ignoresSafeArea(.all, edges: .all))
    }
}

struct IntakeForm_Previews: PreviewProvider {
    static var previews: some View {
        IntakeForm()
    }
}
