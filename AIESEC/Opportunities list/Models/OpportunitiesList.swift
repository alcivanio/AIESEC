//
//  OpportunitiesList.swift
//  AIESEC
//
//  Created by Alcivanio on 15/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class OpportunitiesList: NSObject, Mappable {

    var paging: OpportunityPaging?
    var data: [Opportunity]?
    
    
    required init?(map: Map) { /* Nothing here ;) */ }
    
    func mapping(map: Map) {
        paging  <- map["paging"]
        data    <- map["data"]
    }
    
}











extension Sequence where Iterator.Element == OpportunitiesList {

    func countOpportunities()->Int {
        var countElements = 0
        for element in self {
            countElements = countElements + (element.data?.count ?? 0)
        }
        
        return countElements
    }
    
    
    func allOpportunities()->[Opportunity] {
        var opportunities = [Opportunity]()
        for element in (self) {
            opportunities.append(contentsOf: (element.data ?? [Opportunity]()) )
        }
        
        return opportunities
    }
    
    
    func getNextPage()->Int? {
        var nextPage = 0
        for element in (self) {
            if (element.paging?.currentPage ?? 0) >= nextPage {
                if (element.paging?.currentPage ?? 0) < (element.paging?.totalPages ?? 0) {
                    nextPage = (element.paging?.currentPage ?? 0) + 1
                }
                
                else { return nil }// in this case there is no other pages to load
            }
        }
        
        return nextPage
    }
    
    
    
}

















