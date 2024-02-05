//
//  listCell.swift
//  matching
//
//  Created by Mac on 31/01/24.
//

import SwiftUI

struct listCell: View {
    var num:Int = 0
    var lable:String = "Reading"
    var body: some View {
        HStack {
            HStack {
                Text("\(num)")
                    .padding()
                    .foregroundStyle(Color.custFontDark)
                    .background(Color.custButtonBackground)
                
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                Text(lable)
                    .padding()
                    .font(.sniglet(.regular, size: 20))
                    .foregroundStyle(Color.custFontDark)
            }
            
            
            Spacer()
            Image("Vector")
                
                .resizable()
                
                .aspectRatio(contentMode: .fit)
                .frame(width: 7)
        }
        .padding(.horizontal)
        .padding(.vertical,5)
        
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius:
                                        15.0))
        .shadow(radius: 4)
    }
}

#Preview {
    listCell()
        .background(.black)
}
