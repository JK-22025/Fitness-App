//
//  ExcerciseDetail.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-06.
//

import SwiftUI
let test: ExcerciseModel = ExcerciseModel(name: "", sets: 5, reps: 5, weight: 56.0)

struct RoundedShape: Shape{
    let corners: UIRectCorner
    let radius: CGFloat
    func path (in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
        
    }
}

struct ExcerciseDetail: View {
    let Detail: ExcerciseModel
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Spacer()
            Text("\(Detail.name)")
                .font(.largeTitle)
                .textCase(.uppercase)
                .padding(.horizontal)
            Text("While doing your weights with a resistance bands ")
                
            Spacer()
            
        }
    }
}

#Preview {
    ExcerciseDetail(Detail: card)
}
