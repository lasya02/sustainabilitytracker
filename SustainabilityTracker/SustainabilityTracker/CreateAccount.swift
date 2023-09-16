//
//  CreateAccount.swift
//  SustainabilityTracker
//
//  Created by Lasya Kambhampati on 9/12/23.
//

import SwiftUI

struct CreateAccount: View {
    
    @State private var nameComponents = PersonNameComponents()
    @State private var username: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Create New Account").foregroundColor(Color.white)) {
                    HStack {
                        Text("Name: ")
                        TextField(
                            "Enter your name",
                            value: $nameComponents,
                            format: .name(style: .medium)
                        )
                        .padding(.all)
                    }
                    
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
                IntakeForm()
            }, label: {
                VStack(alignment:.trailing){
                    Text("Next")
                        .foregroundColor(Color.white)
                }
            })
        }
        .background(Color("DarkGreen").opacity(0.9).ignoresSafeArea(.all))
        .navigationTitle("Create Account")
        
    }
}
    
    struct CreateAccount_Previews: PreviewProvider {
        static var previews: some View {
            CreateAccount()
        }
    }
