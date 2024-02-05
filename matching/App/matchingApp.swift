//
//  matchingApp.swift
//  matching
//
//  Created by Mac on 29/01/24.
//

import SwiftUI
import FirebaseCore
@main
struct matchingApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }
        }
    }
}
