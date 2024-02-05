//
//  ReadingDataModel.swift
//  matching
//
//  Created by Mac on 31/01/24.
//

import Foundation

struct ReadingDataModel  {
    
//    var id: String = UUID().uuidString
    var storyText : String?
    var storyTitle : String?
    
    enum CodingKeys: String {

       
        case story_text = "story_text"
        case story_title = "story_title"
    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//
//        storyText = try values.decodeIfPresent(String.self, forKey: .story_text)
//        storyTitle = try values.decodeIfPresent(String.self, forKey: .story_title)
//    }
    init(data:[String:Any]) {
        storyText = data["story_text"] as? String ?? ""
        storyTitle = data["story_title"] as? String ?? ""
    }
}
