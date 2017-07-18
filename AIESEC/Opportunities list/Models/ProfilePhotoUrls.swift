//
//  ProfilePhotoUrls.swift
//  AIESEC
//
//  Created by Alcivanio on 17/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class ProfilePhotoUrls: NSObject, Mappable {
    var original: String?
    var medium: String?
    var thumb: String?
    
    required init?(map: Map) { /* */ }
    
    func mapping(map: Map) {
        original    <- map["original"]
        medium      <- map["medium"]
        thumb       <- map["thumb"]
    }
    
}
