//
//  EducationApp.swift
//  Education
//
//  Created by Guillermo Ruiz Baires on 21/7/23.
//

import SwiftUI

@main
struct EducationApp: App {
    let userManager = UserManager()
    
    init() {
        userManager.load()
    }
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
