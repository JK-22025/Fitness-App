//
//  ContentView.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-02.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var auth = AuthService.shared
    @State private var isLoaded = false
    var body: some View {
        Group{
            if !isLoaded {
                ProgressView()
                    .onAppear{
                        auth.fetchCurrentAppUser { _ in
                            isLoaded = true
                            
                        }
                    }
                
            } else if auth.currentUser == nil {
                // login/register
                // switcher
                AuthGate()
            }else{
                HomeGate()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
