//
//  iconButton.swift
//  matching
//
//  Created by Mac on 29/01/24.
//

import SwiftUI

struct iconButton: View {
    var image:Image
    var body: some View {
        image
            
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 25,height: 25)
            
            .padding(7)
            
            .tint(.imageColorDark)
            
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

#Preview {
    iconButton(image: Image(systemName: "star"))
}
