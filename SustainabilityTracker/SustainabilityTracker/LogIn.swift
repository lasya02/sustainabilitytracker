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
        NavigationView {
            Form {
                Section(header: Text("Log In")) {
                    
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

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
