//
//  HomeScreen.swift
//  matching
//
//  Created by Mac on 29/01/24.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var matchingModel:FirebaseManager
    
   
    var body: some View {
        VStack {
            HStack(alignment:.center){
                Button {
                    
                } label: {
                    
                    buttonView(image: Image("avatar_image"))
                }
                Text("hello")
                    .font(.sniglet(.regular, size: 40))
                    .foregroundStyle(.fontColorDark)
                Spacer()
                Button {
                    
                } label: {
                    iconButton(image:  Image(systemName: "gearshape.fill"))
                }
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 16)]) {
                ForEach (matchingModel.matchingData,id: \.title) { match in
                    VStack(alignment:.center) {
                        AsyncImage(url: URL(string: match.image ?? "" )){ image in
                            image.resizable()
                            
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 65, height: 65)
                        Text(match.title ?? "no data ")
                            .font(.sniglet(.regular,size: 14))
                            .padding(.bottom,10)
                            .padding(.top,5)
                        
                        NavigationLink{
                            if match.title != "Reading" {
                                
                           
                            playingScreen(data: match)
                            }
                            else {
                                readingListScreen(data: match)
                            }
                        } label: {
                            Text("Play now")
                                .font(.sniglet(.regular,size: 12))
                                .padding(.horizontal,30)
                                .padding(.vertical,5)
                                .background(Color.custButtonBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .foregroundStyle(Color.custFont)
                        }
                        
                    }
                    .padding()
                    
                    .frame(width: 150, height: 180)
                    
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.top,20)
                    
                }
            }
            
            Spacer()
        }
        .padding(.top,80)
        .padding(.horizontal,25)
        .frame(maxWidth: .infinity)
        .background(Color.custBackground)
        .ignoresSafeArea()
        .background()
        .onAppear{
            //print(matchingModel.matchingData.first?.data1)
        }
       
    }
}

#Preview {
    HomeScreen()
}
