//
//  LogIn.swift
//  SustainabilityTracker
//
//  Created by Lasya Kambhampati on 9/12/23.
//

import SwiftUI

struct LogIn: View {
    
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            Form {
                Section(header: Text("Log In").foregroundColor(Color.white)) {
                    
                    HStack {
                        Text("Username: ")
                        TextField(
                                "Enter a username",
                                text: $username
                            )
                        .padding(.all)
                    }
                    
                    HStack {
                        Text("Password: ")
                        TextField(
                                "Include at least one number",
                                text: $password
                            )
                        .padding(.all)
                    }
                }
                
            }
            .frame(alignment: .center)
            .scrollContentBackground(.hidden)
          
            NavigationLink(destination: {
                Dashboard()
            }, label: {
                VStack(alignment:.trailing){
                    Text("Dashboard")
                        .foregroundColor(Color.white)
                }
            })
        }
        .background(Color("DarkGreen").opacity(0.9).ignoresSafeArea(.all,edges:.all))
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
