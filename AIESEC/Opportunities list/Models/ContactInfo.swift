//
//  ContactInfo.swift
//  AIESEC
//
//  Created by Alcivanio on 17/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class ContactInfo: NSObject, Mappable {
    var website: String?
    var email: String?
    var phone: String?
    var facebook: String?
    var twitter: String?
    var instagram: String?
    var linkedIn: String?
    var countryCode: String?
    
    
    required init?(map: Map) {/*  */}
    
    
    func mapping(map: Map) {
        website <- map["website"]
        email <- map["email"]
        phone <- map["phone"]
        facebook <- map["facebook"]
        twitter <- map["twitter"]
        instagram <- map["instagram"]
        linkedIn <- map["linkedin"]
        countryCode <- map["country_code"]
    }
    
    
}
