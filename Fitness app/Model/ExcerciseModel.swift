//
//  ExcerciseModel.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-06.
//

import Foundation

struct ExcerciseModel: Identifiable{
    let id = UUID()
    let name: String
    let sets: Int
    let reps: Int
    let weight: Double?
}

enum Category: String{
    case Calesthenics, Pushups, Situps, Weights
}
