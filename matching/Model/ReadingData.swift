//
//	ReadingData.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class ReadingData : NSObject, NSCoding,Identifiable{
    var id: String = UUID().uuidString
	var storyText : String!
	var storyTitle : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		storyText = dictionary["story_text"] as? String
		storyTitle = dictionary["story_title"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if storyText != nil{
			dictionary["story_text"] = storyText
		}
		if storyTitle != nil{
			dictionary["story_title"] = storyTitle
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         storyText = aDecoder.decodeObject(forKey: "story_text") as? String
         storyTitle = aDecoder.decodeObject(forKey: "story_title") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if storyText != nil{
			aCoder.encode(storyText, forKey: "story_text")
		}
		if storyTitle != nil{
			aCoder.encode(storyTitle, forKey: "story_title")
		}

	}

}
