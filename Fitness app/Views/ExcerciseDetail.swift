//
//  ExcerciseDetail.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-06.
//

import SwiftUI
import AVKit


let test: ExcerciseModel = ExcerciseModel(name: "Weights", sets: 5, reps: 5, weight: 56.0, videofilename: "Weights")

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
            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: Detail.videofilename, withExtension: "mp4")!))
                .frame(height: 400)
            Text("\(Detail.name)")
                .font(.largeTitle)
                .textCase(.uppercase)
                .padding(.horizontal)
            Text("Follow while I'm working out with you! and do your best that u can")
            
            
                
            Spacer()
            
        }
        
        }
    }


#Preview {
    ExcerciseDetail(Detail: test)
}
