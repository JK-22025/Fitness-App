//
//  ExcerciseDetail.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-06.
//

import SwiftUI
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
        VStack(alignment: .leading, spacing: 20){
            
        }
    }
}

#Preview {
    ExcerciseDetail(Detail: card)
}
