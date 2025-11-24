//
//  ProfileView.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-05.
//

import SwiftUI

struct ProfileView: View {
    
    @ObservedObject private var auth = AuthService.shared
    @State private var newName = ""
    @State private var errorMessage: String?
    var body: some View {
        Form{
            Section("Profile"){
                Text("Email: \(auth.currentUser?.email ?? "-")")
                Text("Display Name: \(auth.currentUser?.displayName ?? "-")")
                Text("Is Active: \(auth.currentUser?.isActive == true ? "Yes": "False")")
                
            }
            
            Section("Update Display Name"){
                TextField("New Display Name", text: $newName)
                
                Button("Save"){
                    guard !newName.trimmingCharacters(in: .whitespaces).isEmpty else{
                        self.errorMessage = "Display Name cannot be empty"
                        return
                    }
                    auth.updateProfile(displayName: newName) { result in
                        switch result {
                        case .success:
                            self.errorMessage = nil
                        case .failure(let failure):
                            self.errorMessage = failure.localizedDescription
                        }
                    }
                }
            }
            
            if let errorMessage = errorMessage {
                Text(errorMessage).foregroundStyle(.red)
            }
            
            Button(role: .destructive){
                let result = auth.signOut()
                if case .failure(let failure) = result {
                    self.errorMessage = failure.localizedDescription
                }else{
                    self.errorMessage = nil
                }
            }label: {
                Text("Sign Out")
            }
        }
        .onAppear{
            auth.fetchCurrentAppUser { _ in
                // for re-fetching purposes
                // when logged in it will show profile page, we need fetch here
            }
        }
    }
}

#Preview {
    ProfileView()
}
