//
//  Programmes.swift
//  AIESEC
//
//  Created by Alcivanio on 17/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class Programmes: NSObject, Mappable {
    
    var id: Int?
    var shortName: String?
    
    required init?(map: Map) { /**/ }
    
    func mapping(map: Map) {
        id          <- map["id"]
        shortName   <- map["short_name"]
    }
}
