//
//  playingScreen.swift
//  matching
//
//  Created by Mac on 30/01/24.
//

import SwiftUI

struct playingScreen: View {
    @State var data: MatchingModel
    @State var disble:Bool = false
    @State var firstHalf:Bool = true
    @State private var LeftArray: [Data1]  = []// Remove the initialization here
    @State private var RightArray: [Data1]  = []// Remove the initialization here
    @State var startIndex: Int  = 0// Remove the initialization here
    init(data: MatchingModel) {
        self.data = data
        
    }
    
    
    func updateArray(){
        let tempData = data.data1?[startIndex...startIndex+4]
        LeftArray = (tempData?.shuffled() as? [Data1]?)! ?? []
        RightArray = (tempData?.shuffled() as? [Data1]?)! ?? []
        startIndex = startIndex + 5
    }
    

    
    var body: some View {
        VStack{
            appBarComponent(title: data.title ?? "def ",showSettingButton: true)
            Text("\(startIndex)")
            HStack {
                ScrollView(showsIndicators: false) {

                    
                        ForEach($LeftArray ,id: \.id) { $model in
                            AsyncImage(url: URL(string: model.img1_link! )){ image in
                                image.resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 55, height: 55, alignment: .center)
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 95, height: 95)
                            
                            .background(model.isEnable ?  .white : .gray.opacity(0.4) )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .disabled(model.isEnable)
                            .drag(if: model.isEnable) {     // << here !!
                                    let provider = NSItemProvider(contentsOf: URL(string: model.id ?? "0"))!
                                   
                                    return provider
                            }
                                
                        }
                    
                }
                Spacer()
                ScrollView(showsIndicators: false) {
                
                    ForEach($RightArray, id:\.id) { $model in
                        AsyncImage(url: URL(string: model.img2_link! )){ image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 55, height: 55, alignment: .center)
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 95, height: 95)
                        
                        .background(model.isEnable ?  .white : .gray.opacity(0.4) )
                        .clipShape(RoundedRectangle(cornerRadius: 10))

                            .onDrop(of: [.url], isTargeted: .constant(false)) { providers in
                               
                                if let first = providers.first{
                                    let _ = first.loadObject(ofClass: URL.self) { value, error in
                                        
                                        if model.id == "\(String(describing: value!))" {
                                            
                                            
                                            
                                            //  let info =   data.data1?.firstIndex(where: { $0.id == model.id })
                                            let leftInfo = $LeftArray.wrappedValue.firstIndex(where: { $0.id == model.id })
                                            let rightInfo = $RightArray.wrappedValue.firstIndex(where: { $0.id == model.id })
                                            $LeftArray[leftInfo!].isEnable.wrappedValue = false
                                            $RightArray[rightInfo!].isEnable.wrappedValue  = false
                                            
                                            
                                            
                                            
                                            print("color match \(String(describing: model.id))  \(String(describing: value!)) ")
                                           
                                        }
                                        else {
                                            print("color not match \(String(describing: model.id))  \(String(describing: value)) ")
                                        }
                                        
                                    }
                                }
                                return true
                            }
                    }
                }
//                }
            }.padding()
            
//            HStack {
//                
//                ScrollView(showsIndicators: false) {
//                    ForEach($data.data1) { $model in
//                        if $model.isEnable.wrappedValue {
//                            
//                            AsyncImage(url: URL(string: $model.img1Link.wrappedValue)){ image in
//                                image.resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width: 55, height: 55, alignment: .center)
//                            } placeholder: {
//                                ProgressView()
//                            }
//                            .frame(width: 95, height: 95)
//                            
//                            .background( .white )
//                            .clipShape(RoundedRectangle(cornerRadius: 10))
//                            .onDrag {
//                                return .init(contentsOf: URL(string: $model.id.wrappedValue))!
//                            }
//                        }
//                        else{
//                            AsyncImage(url: URL(string: $model.img1Link.wrappedValue)){ image in
//                                image.resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width: 55, height: 55, alignment: .center)
//                            } placeholder: {
//                                ProgressView()
//                            }
//                            .frame(width: 95, height: 95)
//                            .disabled(true)
//                            .background(.gray.opacity(0.5))
//                            .clipShape(RoundedRectangle(cornerRadius: 10))
//                        }
//                        
//                    }
//                }
//                Spacer()
//                ScrollView(showsIndicators: false) {
//                    ForEach($data.data1) { $model in
//                        VStack{
//                       
//                            
//                            AsyncImage(url: URL(string: $model.img2Link.wrappedValue)){ image in
//                                image.resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width: 55, height: 55, alignment: .center)
//                                
//                            } placeholder: {
//                                ProgressView()
//                            }
//                            .frame(width: 95, height: 95)
//                            .disabled($model.isEnable.wrappedValue)
//                            .background($model.isEnable.wrappedValue ? .white : .gray.opacity(0.5))
//                            .clipShape(RoundedRectangle(cornerRadius: 10))
//                            .onDrop(of: [.url], isTargeted: .constant(false)) { providers in
//                                
//                                if let first = providers.first{
//                                    let _ = first.loadObject(ofClass: URL.self) { value, error in
//                                        
//                                        if $model.id.wrappedValue! == "\(String(describing: value!))" {
//                                            DispatchQueue.main.async {
//                                                $model.isEnable.wrappedValue = false
//                                            }
//                                            
//                                            print("color match \(String(describing: $model.id.wrappedValue))  \(String(describing: value!)) ")
//                                        }
//                                        else {
//                                            print("color not match \($model.id.wrappedValue)  \(value) ")
//                                        }
//                                        
//                                    }
//                                }
//                                return false
//                            }
//                        }
//                        
//                    }
//                    
//                    
//                    
//                }
//                
//                
//                
//                //            List {
//                //                ForEach(data.data1.enumerated(), id: \.1) { idx in
//                //                    if(data.data1[idx].isEnable) {
//                //                        Text("121")
//                //                            .background(Color.green)
//                //                    } else {
//                //                        Text("221")
//                //                            .background(Color.red)
//                //                    }
//                //                    Button{
//                //                        data.data1[idx].isEnable.toggle()
//                //                        print(data.data1[idx].isEnable)
//                //                    } label: {
//                //                        Text("click")
//                //                    }
//                //                }
//                //            }
//                
//                
//                //            List {
//                //                ForEach(halfArray.indices) { idx in
//                //                    if(halfArray[idx].isEnable) {
//                //                        Text("121")
//                //                            .background(Color.green)
//                //                    } else {
//                //                        Text("221")
//                //                            .background(Color.red)
//                //                    }
//                //                    Button{
//                //                        halfArray[idx].isEnable.toggle()
//                //                        print(halfArray[idx].isEnable)
//                //                    } label: {
//                //                        Text("click")
//                //                    }
//                //                }
//                //            }
//                //
//                
//                //            ForEach(ArrayhalfArray) { (index,questions) in
//                //                if(halfArray[index].isEnable) {
//                //                    Text("121")
//                //                        .background(Color.green)
//                //                } else {
//                //                    Text("221")
//                //                        .background(Color.red)
//                //                }
//                //                Button{
//                //                    halfArray[index].isEnable.toggle()
//                //                    print(halfArray[index].isEnable)
//                //                } label: {
//                //                    Text("click")
//                //                }
//                //            }
//                
//                
//                
//                
//            }
//            .padding()
        }
        .background(Color.custBackground)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity)
        .onAppear{

            startIndex = 0
            updateArray()
            print(data)
            
        }
        
        
        
        
        
    }
    
}

//#Preview {
//    NavigationStack{
//        playingScreen(data: MatchingModel())
//    }
//}


struct Cell:View {
    @State var model: Data1
    @State var isLeft:Bool = false
    
    var body: some View {
        AsyncImage(url: URL(string: model.img1_link! )){ image in
            image.resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 55, height: 55, alignment: .center)
        } placeholder: {
            ProgressView()
        }
        .frame(width: 95, height: 95)
        
        .background(model.isEnable ?  .white : .gray )
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
