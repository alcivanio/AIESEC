//
//  Organization.swift
//  AIESEC
//
//  Created by Alcivanio on 17/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class Organization: NSObject, Mappable {
    var id:                 Int?
    var name:               String?
    var meta:               String?
    var url:                String?
    var website:            String?
    var coverPhotoUrls:     String?
    var contactInfo:        ContactInfo?
    var profilePhotosUrl:   ProfilePhotoUrls?
    
    required init?(map: Map) { /*  */ }
    
    func mapping(map: Map) {
        id                  <- map["id"]
        name                <- map["name"]
        meta                <- map["meta"]
        url                 <- map["url"]
        website             <- map["website"]
        coverPhotoUrls      <- map["cover_photo_urls"]
        contactInfo         <- map["contact_info"]
        profilePhotosUrl    <- map["profile_photo_urls"]
    }
}
