//
//  ContentView.swift
//  SustainabilityTracker
//
//  Created by Lasya Kambhampati on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Text("SUSTY TRACKER")
                    .font(.system(size: 30))
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    
                Spacer()
                NavigationLink(destination: {
                    CreateAccount()
                }, label: {
                   Text("Create Account")
                })
                
                NavigationLink(destination: {
                    LogIn()
                }, label: {
                   Text("Log In")
                })

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
            .background(Color.green.opacity(0.6))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
