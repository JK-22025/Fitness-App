//
//  HomeGate.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-07.
//

import SwiftUI

struct HomeGate: View {
    @State private var showexcerciseCard = false
    var body: some View {
        NavigationView {
            VStack{
                Picker("", selection: $showexcerciseCard){
                    Text("Excercise").tag(true)
                    Text("Profile").tag(false)
                }.pickerStyle(.segmented)
                    .padding()
                if showexcerciseCard{
                    ExcerciseView()
                }else {
                    ProfileView()
                }
            }
        }
    }
}

#Preview {
    HomeGate()
}
