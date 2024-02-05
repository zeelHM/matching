//
//  readingScreen.swift
//  matching
//
//  Created by Mac on 31/01/24.
//

import SwiftUI

struct readingListScreen: View {
    @State var data:MatchingModel

    var body: some View {
        VStack {
            appBarComponent(title: data.title ?? "def")
            ScrollView {
//                ForEach(Array($data.readingData.wrappedValue.enumerated() ),id: \.1) { (index,reading) in
//                    NavigationLink {
//                        readingScreen(data: data,storyIndex: index)
//                    } label: {
//                        listCell(num: index,lable: $data.readingData[index].storyTitle.wrappedValue)
//                    }
//                    
//                }
                
            }
            .padding()
            Spacer()
        }
        .background(Color.custBackground)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity)
        
       
            
    }
}

//#Preview {
//    readingScreen(data: .constant(MatchingModel(fromDictionary: [: ])))
//}
