//
//  Manager.swift
//  AIESEC
//
//  Created by Alcivanio on 17/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class Manager: NSObject, Mappable {

    var id:                 Int?
    var fullName:           String?
    var email:              String?
    var profilePhotoUrl:    String?
    var coverPhotoUrl:      String?
    var contactInfo:        ContactInfo?
    
    required init?(map: Map) { /* */ }
    
    func mapping(map: Map) {
        id              <- map["id"]
        fullName        <- map["full_name"]
        email           <- map["email"]
        profilePhotoUrl <- map["profile_photo_url"]
        coverPhotoUrl   <- map["cover_photo_url"]
        contactInfo     <- map["contact_info"]
    }
    
}

