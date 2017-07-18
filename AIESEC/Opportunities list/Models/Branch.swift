//
//  Branch.swift
//  AIESEC
//
//  Created by Alcivanio on 17/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class Branch: NSObject, Mappable {
    
    var id: Int?
    var name: String?
    var url: String?
    var addressInfo: AddressInfo?
    var organization: Organization?
    
    required init?(map: Map) { /**/ }
    
    func mapping(map: Map) {
        id              <- map["id"]
        name            <- map["name"]
        url             <- map["url"]
        addressInfo     <- map["address_info"]
        organization    <- map["organisation"]
    }
    
}
