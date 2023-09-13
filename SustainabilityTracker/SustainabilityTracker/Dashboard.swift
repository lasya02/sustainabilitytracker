//
//  Dashboard.swift
//  SustainabilityTracker
//
//  Created by Lasya Kambhampati on 9/12/23.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Dashboard")
                    .font(.system(size: 30))
                    .font(.headline)
                    .foregroundColor(.green)
                
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.red)
                }
                .padding(.horizontal)
                
                
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.yellow)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                }
                .padding(.horizontal)
                
                
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.purple)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.pink)
                }
                .padding(.horizontal)
                
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
