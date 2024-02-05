////
////  readingScreen.swift
////  matching
////
////  Created by Mac on 31/01/24.
////
//
//import SwiftUI
//
//struct readingScreen: View {
//    @State var data:MatchingModel
//    
//    @State var storyIndex:Int
//    
//   
//    var body: some View {
//        VStack {
////            appBarComponent(title: data.readingData[storyIndex].storyTitle,showSoundButton: true)
//            Spacer()
//            VStack {
//                           
//                    Text("\(storyIndex)")
//                    Text($data.readingData[storyIndex].storyText.wrappedValue)
//                
//            }
//            .padding()
//            
//            .font(.sniglet(.regular,size: 20))
//            .foregroundStyle(Color.custImageDark)
//            .background(.white)
//            .clipShape(RoundedRectangle(cornerRadius: 20))
//            .lineSpacing(10.0)
//            .padding(.horizontal,20)
//            .padding(.vertical,20)
//            HStack(spacing:15){
//                Button {
//                    if storyIndex >= 0 {
//                        storyIndex -= 1
//                    } else {
//                        print("last note")
//                    }
//                    
//                } label: {
//                    VStack {
//                        Image(systemName: "chevron.left.to.line")
//                            .resizable()
//                        
//                            .tint(.black)
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 12,height: 12,alignment: .center)
//                            
//                    }
//                    .frame(width: 42,height: 42,alignment: .center)
//                    .background( .white)
//                    .clipShape(Circle())
//                    
//                    .shadow(radius: 3)
//                }
//                .disabled(storyIndex == 0)
//                
//                Button {
//                    
//                } label: {
//                    VStack {
//                        Image(systemName: "play.fill")
//                            .resizable()
//                        
//                            .tint(.black)
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 30,height: 30,alignment: .center)
//                    }
//                    .padding(.leading,10)
//                    .frame(width: 70,height: 70,alignment: .center)
//                    
//                    .background(.white)
//                    .clipShape(Circle())
//                    .shadow(radius: 3)
//                    
//                }
//             
//                Button {
//                    if storyIndex < data.readingData.count - 1 {
//                        storyIndex += 1
//                        
//                    } else {
//                        print("last note")
//                    }
//                } label: {
//                    VStack {
//                        Image(systemName: "chevron.right.to.line")
//                            .resizable()
//                            .tint(.black)
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 12,height: 12,alignment: .center)
//                            
//                    }
//                    .frame(width: 42,height: 42,alignment: .center)
//                    .background( .white)
//                    .clipShape(Circle())
//                    .shadow(radius: 3)
//                    
//                }
//                .disabled(storyIndex == data.readingData.count - 1)
//             
//                
//            }
//            .padding(.bottom,30)
//            
//        }
//        .frame(maxWidth: .infinity)
//        .background(Color.custBackground)
//        .ignoresSafeArea()
//        .navigationBarBackButtonHidden(true)
//    }
//}
////
////#Preview {
////    readingScreen()
////}
