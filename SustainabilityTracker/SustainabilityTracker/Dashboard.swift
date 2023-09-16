//
//  Dashboard.swift
//  SustainabilityTracker
//
//  Created by Lasya Kambhampati on 9/12/23.
//

import SwiftUI

struct Dashboard: View {
    
    @State private var score = 790.0
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            VStack{
                Spacer(minLength: 30)
                VStack(spacing: 0){
                    Text("790")
                        .font(.system(size: 100))
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                    
                    Slider(
                        value: $score,
                        in: 0...900.0
//                        onEditingChanged: { editing in
//                            isEditing = editing
//                        }
                    )
                    .accentColor(Color("BrightGreen")).disabled(true)
//                    .disabled(true)
//                    .tint(Color("BrightGreen"))
                    .padding(.all)
                   
                }
                
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.black)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color("BrightGreen"))
                }
                .padding(.horizontal)
                
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color("DarkGreen"))
                }
                .padding(.horizontal)
                
                Spacer(minLength: 100)
            }
            .background(Color("DarkGreen").opacity(0.9).ignoresSafeArea(.all))
            .navigationTitle("Dashboard")
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
