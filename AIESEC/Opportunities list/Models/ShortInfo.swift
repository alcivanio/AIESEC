//
//  Nationality.swift
//  AIESEC
//
//  Created by Alcivanio on 17/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class ShortInfo: NSObject, Mappable {

    var id:     Int?
    var name:   String?
    var option: String?
    var level:  Int?
    
    
    required init?(map: Map) { /* */ }
    
    func mapping(map: Map) {
        id      <- map["id"]
        name    <- map["name"]
        option  <- map["option"]
        level   <- map["level"]
    }
    
}
