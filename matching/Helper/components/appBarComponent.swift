//
//  appBarComponent.swift
//  matching
//
//  Created by Mac on 30/01/24.
//

import SwiftUI

struct appBarComponent: View {
    @Environment(\.dismiss) var dismiss
    @State var title:String = "Home"
    @State var showSettingButton:Bool = false
    @State var showSoundButton:Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            HStack(alignment:.center){
                Button {
                    dismiss()
                } label: {
                    iconButton(image: Image("backArrow"))
                }
                Spacer()
                Text(title)
                    .font(.sniglet(.regular,size: 25))
                    .foregroundStyle(Color.custImageDark)
                    .padding(.trailing,showSoundButton ? 0 : 10)
                    .padding(.trailing,showSettingButton ? 0 : 10)
                    
                Spacer()
                if showSettingButton {
                    Button {
                        
                    } label: {
                        iconButton(image:  Image(systemName: "gearshape.fill"))
                    }
                }
                if showSoundButton {
                    Button {
                        
                    } label: {
                        iconButton(image:  Image(systemName: "speaker.wave.2.fill"))
                    }
                }
            }.padding(.bottom,15)
        }
        .padding()
        .frame(height: 150)
        .frame(maxWidth: .infinity)
        .background(Color.custAppbarColor)
        .clipShape(UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(bottomLeading: 20,bottomTrailing: 20)))
        
        
    }
}

#Preview {
    appBarComponent()
}
