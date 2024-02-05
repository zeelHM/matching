////
////	Data1.swift
////	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport
//
//import Foundation
//
//
//class Data1 : NSObject, NSCoding,Identifiable{
//
//	var id : String!
//	var img1Link : String!
//	var img2Link : String!
//    var isEnable : Bool = true
//
//
//	/**
//	 * Instantiate the instance using the passed dictionary values to set the properties values
//	 */
//	init(fromDictionary dictionary: [String:Any]){
//		id = dictionary["id"] as? String
//		img1Link = dictionary["img1_link"] as? String
//		img2Link = dictionary["img2_link"] as? String
//        
//	}
//
//	/**
//	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
//	 */
//	func toDictionary() -> [String:Any]
//	{
//		var dictionary = [String:Any]()
//		if id != nil{
//			dictionary["id"] = id
//		}
//		if img1Link != nil{
//			dictionary["img1_link"] = img1Link
//		}
//		if img2Link != nil{
//			dictionary["img2_link"] = img2Link
//		}
//		return dictionary
//	}
//
//    /**
//    * NSCoding required initializer.
//    * Fills the data from the passed decoder
//    */
//    @objc required init(coder aDecoder: NSCoder)
//	{
//         id = aDecoder.decodeObject(forKey: "id") as? String
//         img1Link = aDecoder.decodeObject(forKey: "img1_link") as? String
//         img2Link = aDecoder.decodeObject(forKey: "img2_link") as? String
//        isEnable = true
//
//	}
//
//    /**
//    * NSCoding required method.
//    * Encodes mode properties into the decoder
//    */
//    @objc func encode(with aCoder: NSCoder)
//	{
//		if id != nil{
//			aCoder.encode(id, forKey: "id")
//		}
//		if img1Link != nil{
//			aCoder.encode(img1Link, forKey: "img1_link")
//		}
//		if img2Link != nil{
//			aCoder.encode(img2Link, forKey: "img2_link")
//		}
//
//	}
//
//}
