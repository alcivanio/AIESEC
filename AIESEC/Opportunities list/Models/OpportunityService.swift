//
//  OpportunityService.swift
//  AIESEC
//
//  Created by Alcivanio on 15/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class OpportunityService: NSObject {

    class func loadOpportunities(atPage pageIndex: Int, count: Int, completion:@escaping ((OpportunitiesList?)->Void)) {
        
        let url = getUrlWith(atPage: pageIndex)
        
        Alamofire.request(url).responseObject { (response: DataResponse<OpportunitiesList>) in
            let opportunities = response.result.value
            completion(opportunities)
        }
    }
    
    
    class func getUrlWith(atPage pageIndex: Int)->String {
        let partialUrl  = "https://gis-api.aiesec.org/v2/opportunities.json?"
        let accessToken = "e316ebe109dd84ed16734e5161a2d236d0a7e6daf499941f7c110078e3c75493"
        
        var params              = [String : String]()
        
        params["sort"]          = "earliest_start_date"
        params["access_token"]  = accessToken
        
        params["filters[programmes][]"] = "2"
        params["page"]                  = "\(pageIndex)"
        params["status"]                = "open"
        
        params["filters[last_interaction][from]"]   = "2017-01-30"
        params["filters[earliest_start_date]"]      = "2017-6-17"//today
        
        return partialUrl + params.getParamsString()
        
        
        
        //let url = "https://gis-api.aiesec.org/v2/opportunities.json?access_token=e316ebe109dd84ed16734e5161a2d236d0a7e6daf499941f7c110078e3c75493&filters[programmes][]=2&page=\(atPage)&status=open&filters[last_interaction][from]=2017-01-30&filters[earliest_start_date]=2017-6-16&sort=earliest_start_date"
    }
    
    
}
