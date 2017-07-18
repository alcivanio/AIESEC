//
//  OpportunityPaging.swift
//  AIESEC
//
//  Created by Alcivanio on 15/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class OpportunityPaging: NSObject, Mappable {
    
    var totalItems: Int?
    var currentPage: Int?
    var totalPages: Int?
    
    required init?(map: Map) { /**/ }
    
    
    func mapping(map: Map) {
        totalItems  <- map["total_items"]
        currentPage <- map["current_page"]
        totalPages  <- map["total_pages"]
    }
    
}
