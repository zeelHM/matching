//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ClsListMaching:NSObject,NSCoding{
    var data1 : [MatchingModel]!

    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: NSArray){
        data1 = [MatchingModel]()
        if let data1Array = dictionary as? [[String:Any]]{
            for dic in data1Array{
                let value = MatchingModel(fromDictionary: dic)
                data1.append(value)
            }
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]{
        var dictionary = [String:Any]()
        if data1 != nil{
            var dictionaryElements = [[String:Any]]()
            for data1Element in data1 {
                dictionaryElements.append(data1Element.toDictionary())
            }
            dictionary["data1"] = dictionaryElements
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder){
         data1 = aDecoder.decodeObject(forKey :"data1") as? [MatchingModel]
    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder){
        if data1 != nil{
            aCoder.encode(data1, forKey: "data1")
        }
    }
}

class MatchingModel : NSObject, NSCoding{

	var data1 : [Data1]!
	var image : String!
	var readingData : [ReadingData]!
	var title : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		data1 = [Data1]()
		if let data1Array = dictionary["data1"] as? [[String:Any]]{
			for dic in data1Array{
				let value = Data1(fromDictionary: dic)
				data1.append(value)
			}
		}
		image = dictionary["image"] as? String
		readingData = [ReadingData]()
		if let readingDataArray = dictionary["reading_data"] as? [[String:Any]]{
			for dic in readingDataArray{
				let value = ReadingData(fromDictionary: dic)
				readingData.append(value)
			}
		}
		title = dictionary["title"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if data1 != nil{
			var dictionaryElements = [[String:Any]]()
			for data1Element in data1 {
				dictionaryElements.append(data1Element.toDictionary())
			}
			dictionary["data1"] = dictionaryElements
		}
		if image != nil{
			dictionary["image"] = image
		}
		if readingData != nil{
			var dictionaryElements = [[String:Any]]()
			for readingDataElement in readingData {
				dictionaryElements.append(readingDataElement.toDictionary())
			}
			dictionary["reading_data"] = dictionaryElements
		}
		if title != nil{
			dictionary["title"] = title
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         data1 = aDecoder.decodeObject(forKey :"data1") as? [Data1]
         image = aDecoder.decodeObject(forKey: "image") as? String
         readingData = aDecoder.decodeObject(forKey :"reading_data") as? [ReadingData]
         title = aDecoder.decodeObject(forKey: "title") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if data1 != nil{
			aCoder.encode(data1, forKey: "data1")
		}
		if image != nil{
			aCoder.encode(image, forKey: "image")
		}
		if readingData != nil{
			aCoder.encode(readingData, forKey: "reading_data")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}

	}

}
