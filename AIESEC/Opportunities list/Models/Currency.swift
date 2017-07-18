//
//  Currency.swift
//  AIESEC
//
//  Created by Alcivanio on 18/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class Currency: NSObject, Mappable {

    var id:             Int?
    var name:           String?
    var alphabeticCode: String?
    
    required init?(map: Map) { /**/ }
    
    func mapping(map: Map) {
        id              <- map["id"]
        name            <- map["name"]
        alphabeticCode  <- map["alphabetic_code"]
    }
}
