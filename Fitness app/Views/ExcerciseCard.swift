//
//  ExcerciseCard.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-06.
//

import SwiftUI

let card: ExcerciseModel = ExcerciseModel(name: "Weights", sets: 5, reps: 5, weight: 56.0)
struct ExcerciseCard: View {
    let excercise: ExcerciseModel
    var body: some View {
        ZStack{
            VStack(alignment: .center, spacing: 8){
                Text(excercise.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
            }
            .padding()
            .frame(width: 300, height: 300)
            .background(Color(.gray))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            
            
        }
    }
}

#Preview {
    ExcerciseCard(excercise: card)
}
