//
//  ExcerciseView.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-07.
//

import SwiftUI

struct ExcerciseView: View {
    let excercise: ExcerciseModel
    var body: some View {
        Text(excercise.name)
        
    }
}

#Preview {
    ExcerciseView(excercise: )
}
