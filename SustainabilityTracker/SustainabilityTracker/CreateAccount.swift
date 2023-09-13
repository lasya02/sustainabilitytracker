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
        NavigationView {
            Form {
                Section(header: Text("Create New Account")) {
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
            Spacer()
        }
      
    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount()
    }
}
