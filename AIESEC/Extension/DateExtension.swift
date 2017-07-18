//
//  DateExtension.swift
//  AIESEC
//
//  Created by Alcivanio on 17/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit

extension Date {
    static var defaultFormat: String {
        get { return "yyyy-MM-dd" }//2017-6-17
    }
    
    static func getTodayFormatted(format: String)->String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string( from: Date() )
    }
}
