//
//  ExcerciseView.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-07.
//

import SwiftUI

let excercise: [ExcerciseModel] = [
    .init(name: "Weights", sets: 5, reps: 5, weight: 59, videofilename: "Weights"),
    .init(name: "Pushups", sets: 5, reps: 5, weight: 0, videofilename: "Pushups"),
    .init(name: "Situps", sets: 5, reps: 5, weight: 0, videofilename: "Situps"),
    .init(name: "Calesthenics", sets: 5, reps: 5, weight: 0, videofilename: "Calesthenics")
]
struct ExcerciseView: View {
    
    var body: some View {
        
        // foreach
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                ForEach(excercise, id: \.id) { excercise in
                    NavigationLink(destination: ExcerciseDetail(Detail: excercise)){
                        ExcerciseCard(excercise:   excercise)
                    }
                    
                    
                    
                }
            }
        }
        
        
    }
}

#Preview {
    ExcerciseView()
}
