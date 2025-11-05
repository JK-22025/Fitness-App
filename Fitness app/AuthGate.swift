//
//  AuthGate.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-05.
//

import SwiftUI

struct AuthGate: View {
    
    @State private var showLogin = true
    var body: some View {
        VStack{
            Picker("", selection: $showLogin){
                Text("Login").tag(true)
                Text("Register").tag(false)
            }.pickerStyle(.segmented)
                .padding()
            if showLogin{
                LoginView()
            }else {
                RegisterView()
            }
        }
    }
}

#Preview {
    AuthGate()
}
