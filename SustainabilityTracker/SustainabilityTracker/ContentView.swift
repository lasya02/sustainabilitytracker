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
//                Text("ECO GREEN")
//                    .font(.system(size: 30))
//                    .font(.headline)
//                    .fontWeight(.bold)
//                    .foregroundColor(.white)
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400,height: 400)
                    
                Spacer()
                NavigationLink(destination: {
                    CreateAccount()
                }, label: {
                    
                   Text("Create Account")
                        .foregroundColor(Color.white)
                        
                })
               
                
                NavigationLink(destination: {
                    LogIn()
                }, label: {
                   Text("Log In")
                        .foregroundColor(Color.white)
                })

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
            .background(Color("DarkGreen").opacity(0.9).ignoresSafeArea(.all,edges: .all))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
