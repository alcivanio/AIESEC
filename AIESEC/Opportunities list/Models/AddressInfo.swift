//
//  AddressInfo.swift
//  AIESEC
//
//  Created by Alcivanio on 17/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class AddressInfo: NSObject, Mappable {
    
    var address1:   String?
    var address2:   String?
    var postCode:   String?
    var city:       String?
    var country:    String?
    
    required init?(map: Map) { /* */ }
    
    func mapping(map: Map) {
        address1    <- map["address_1"]
        address2    <- map["address_2"]
        postCode    <- map["postcode"]
        city        <- map["city"]
        country     <- map["country"]
        
    }
    
}
