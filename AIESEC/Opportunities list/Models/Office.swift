//
//  Office.swift
//  AIESEC
//
//  Created by Alcivanio on 17/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class Office: NSObject, Mappable {
    
    var id:         Int?
    var name:       String?
    var fullName:   String?
    var email:      String?
    var tag:        String?
    var parentId:   Int?
    var signupLink: String?
    var country:    String?
    var url:        String?

    var profilePhotoUrl: String?
    var coverPhotoUrl: String?

    required init?(map: Map) { /* */ }

    func mapping(map: Map) {
        id          <- map["id"]
        name        <- map["name"]
        fullName    <- map["full_name"]
        email       <- map["email"]
        tag         <- map["tag"]
        parentId    <- map["parent_id"]
        signupLink  <- map["signup_link"]
        country     <- map["country"]
        url         <- map["url"]
        
        profilePhotoUrl     <- map["profile_photo_url"]
        coverPhotoUrl       <- map["cover_photo_url"]
    }
    
}
