//
//  AppUser.swift
//  Fitness app
//
//  Created by Jawad Kazan on 2025-11-04.
//

import Foundation
import FirebaseFirestore
struct AppUser: Identifiable, Codable{
    @DocumentID var id: String?
    let email: String
    var displayName: String
    var isActive: Bool = true
}
