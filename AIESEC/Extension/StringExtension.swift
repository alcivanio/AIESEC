//
//  StringExtension.swift
//  AIESEC
//
//  Created by Alcivanio on 17/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit

extension String {

}


extension Dictionary where Key == String, Value == String {

    func getParamsString()->String {
        let selfKeys    = Array(self.keys)
        let finalParams = NSMutableString()
        
        for key in selfKeys {
            finalParams.append(key)
            finalParams.append("=")
            finalParams.append(self[key] ?? "")
            
            if key != selfKeys.last {
                finalParams.append("&")
            }
        }
        
        
        return finalParams as String
    }
}
