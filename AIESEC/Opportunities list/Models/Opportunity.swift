//
//  Opportunity.swift
//  AIESEC
//
//  Created by Alcivanio on 15/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import ObjectMapper

class Opportunity: NSObject, Mappable {

    var id:                 Int?
    var title:              String?
    var latitude:           String?
    var longitude:          String?
    var url:                String?
    var status:             String?
    var desc:               String?
    var isGEP:              Bool?
    var currentStatus:      String?
    var location:           String?
    var city:               String?
    var applicationsCount:  Int?
    var isFavorited:        Bool?
    var favorites:          Int?
    var remark:             String?
    var duration:           Int?
    var durationMin:        Int?
    var durationMax:        Int?
    var googlePlaceId:      String?
    var isGE:               String?
    var programmes:         Programmes?
    var branch:             Branch?
    var office:             Office?
    var appliedTo:          Bool?
    var appliedToWith:      Bool?
    
    var officeFootfallForExchange:  Int?
    var team:                       String?
    var project:                    String?
    var tnManagerInfo:              String?
    var openings:                   Int?
    var availableOpenings:          Int?
    var department:                 String?
    var sdgInfo:                    String?
    var npsScore:                   Int?
    
    var homeLC:         Office?
    var hostLC:         Office?
    var managers:       [Manager]?
    var nationalities:  [ShortInfo]?
    var skills:         [ShortInfo]?
    var backgrounds:    [ShortInfo]?
    var languages:      [ShortInfo]?
    var issues:         [ShortInfo]?
    var studyLevels:    [ShortInfo]?
    
    var preferedLocationsInfo: [Office]?
    
    
    var profilePhotoUrls:       ProfilePhotoUrls?
    var coverPhotoUrls:         String?
    var applicationCloseDate:   String?
    var earliestStartDate:      String?
    var latestEndDate:          String?
    var createdAt:              String?
    var updatedAt:              String?
    
    
    required init?(map: Map) { /**/ }
    
    func mapping(map: Map) {
        id                      <- map["id"]
        title                   <- map["title"]
        latitude                <- map["lat"]
        longitude               <- map["lng"]
        url                     <- map["url"]
        status                  <- map["status"]
        desc                    <- map["description"]
        isGEP                   <- map["is_gep"]
        currentStatus           <- map["current_status"]
        location                <- map["location"]
        city                    <- map["city"]
        applicationsCount       <- map["applications_count"]
        isFavorited             <- map["is_favourited"]
        favorites               <- map["favorites"]
        remark                  <- map["remark"]
        duration                <- map["duration"]
        durationMin             <- map["duration_min"]
        durationMax             <- map["duration_max"]
        googlePlaceId           <- map["google_place_id"]
        isGE                    <- map["is_ge"]
        programmes              <- map["programmes"]
        branch                  <- map["branch"]
        office                  <- map["office"]
        appliedTo               <- map["applied_to"]
        appliedToWith           <- map["applied_to_with"]
        
        officeFootfallForExchange   <- map["office_footfall_for_exchange"]
        team                        <- map["team"]
        project                     <- map["project"]
        tnManagerInfo               <- map["tn_manager_info"]
        openings                    <- map["openings"]
        availableOpenings           <- map["available_openings"]
        department                  <- map["department"]
        sdgInfo                     <- map["sdg_info"]
        npsScore                    <- map["nps_score"]
        
        hostLC          <- map["host_lc"]
        homeLC          <- map["home_lc"]
        managers        <- map["managers"]
        nationalities   <- map["nationalities"]
        skills          <- map["skills"]
        backgrounds     <- map["backgrounds"]
        languages       <- map["languages"]
        issues          <- map["issues"]
        studyLevels     <- map["study_levels"]
        
        preferedLocationsInfo <- map["prefered_locations_info"]
        
        earliestStartDate       <- map["earliest_start_date"]
        latestEndDate           <- map["latest_end_date"]
        applicationCloseDate    <- map["applications_close_date"]
        applicationsCount       <- map["applications_count"]
        profilePhotoUrls        <- map["profile_photo_urls"]
        coverPhotoUrls          <- map["cover_photo_urls"]
        createdAt               <- map["created_at"]
        updatedAt               <- map["updated_at"]
    }
    
}


















