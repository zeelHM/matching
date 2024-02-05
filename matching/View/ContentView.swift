//
//  ContentView.swift
//  matching
//
//  Created by Mac on 29/01/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var FirebaseObject:FirebaseManager = FirebaseManager.shared
    init()  {
        
    }
    
    var body: some View {
        
            HomeScreen()
                .environmentObject(FirebaseObject)
               
        
    }
}

#Preview {
    ContentView()
}
