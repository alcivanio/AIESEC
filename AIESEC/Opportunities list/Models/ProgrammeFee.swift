//
//  ProgrammeFee.swift
//  AIESEC
//
//  Created by Alcivanio on 18/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class ProgrammeFee: NSObject, Mappable {

    var id:             Int?
    var programmeId:    Int?
    var mcId:           Int?
    var currencyId:     Int?
    var fee:            Int?
    
    var programmes:     Programmes?
    var currency:       Currency?
    
    required init?(map: Map) {/**/}
    
    func mapping(map: Map) {
        id          <- map[""]
        programmeId <- map[""]
        mcId        <- map[""]
        currencyId  <- map[""]
        fee         <- map[""]
        
        programmes  <- map["programmes"]
        currency    <- map["currency"]
    }
    
}
