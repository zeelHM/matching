//
//  MatchingModel.swift
//  matching
//
//  Created by Mac on 29/01/24.
//

import Foundation


class RootClass : NSObject, NSCoding{

    var id : Int!
    var img1Link : String!
    var img2Link : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        id = dictionary["id"] as? Int
        img1Link = dictionary["img1_link"] as? String
        img2Link = dictionary["img2_link"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if id != nil{
            dictionary["id"] = id
        }
        if img1Link != nil{
            dictionary["img1_link"] = img1Link
        }
        if img2Link != nil{
            dictionary["img2_link"] = img2Link
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         id = aDecoder.decodeObject(forKey: "id") as? Int
         img1Link = aDecoder.decodeObject(forKey: "img1_link") as? String
         img2Link = aDecoder.decodeObject(forKey: "img2_link") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if img1Link != nil{
            aCoder.encode(img1Link, forKey: "img1_link")
        }
        if img2Link != nil{
            aCoder.encode(img2Link, forKey: "img2_link")
        }

    }

}

struct Data1 : Codable {
    let id : String?
    let img1_link : String?
    let img2_link : String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case img1_link = "img1_link"
        case img2_link = "img2_link"
    }

    init(id:String,img1:String,img2:String) throws {
        self.id = id
        self.img1_link = img1
        self.img2_link = img2
    }

}

class MatchingModel: Codable {
    let data1 : [Data1]?
    let image : String?
    let title : String?

    enum CodingKeys: String, CodingKey {
        case data1 = "data1"
        case image = "image"
        case title = "title"
    }

    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data1 = try values.decodeIfPresent([Data1].self, forKey: .data1)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        title = try values.decodeIfPresent(String.self, forKey: .title)
    }

}
