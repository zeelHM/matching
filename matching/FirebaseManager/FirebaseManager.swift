//
//  FirebaseManager.swift
//  matching
//
//  Created by Mac on 29/01/24.
//

import Foundation
import FirebaseDatabase



class FirebaseManager: ObservableObject {
    private var ref:DatabaseReference =  {
        let ref = Database.database().reference()
        return ref
    }()
    static let shared = FirebaseManager()
        @Published var matchingData:[MatchingModel] = [] {
            didSet {
                print("manager change")
            }
    
        }
    
    init() {
        Task{
            try  await getAllData()
            print(matchingData)
        }
    }
    
    
    
    
    
    func getAllData() async throws   {
        let data = Database.database().reference()
        /*
         { (snapshot) in
         
         for childSnapshot in snapshot.children.allObjects as! [DataSnapshot] {
         if let temp = childSnapshot as? [[String:Any]]{
         
         for dic in temp{
         let value = MatchingModel(fromDictionary: dic)
         
         self.matchingData.append(value)
         
         }
         
         }
         }
         .jsonObject(with: data, options: .allowFragments) as! [String: Any]
         */
        
        
        ref.child("matching").observeSingleEvent(of: .value, with: { snapshot in
            // Get user value
            for childSnapshot in snapshot.children.allObjects as! [DataSnapshot] {
                let value = childSnapshot.value as? NSDictionary
                print("=============================================")
                
                    
                    
                    let a = MatchingModel(data: value as! [String : Any] )
                        
                        self.matchingData.append( a )
                    
                   
                
                
                
                
                
                
            }
            
            
            
            // ...
        }) { error in
            print(error.localizedDescription)
        }
    }
    
}

