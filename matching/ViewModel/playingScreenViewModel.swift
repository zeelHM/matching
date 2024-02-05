//
//  playingScreenViewModel.swift
//  matching
//
//  Created by Mac on 30/01/24.
//

import Foundation


class playingScreenViewModel:ObservableObject {
    var firstHalf:Bool = true
    @Published var  fullArray:[Data1] = []
    @Published var  halfArray:[Data1] = []
    
}
