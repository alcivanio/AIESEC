//
//  OpportunityListCell.swift
//  AIESEC
//
//  Created by Alcivanio on 15/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit
import BFPaperTableViewCell
import SDWebImage
import MaterialComponents


struct OpportunityCellInfo {
    let imageUrl: String
    let title: String
    let description1: String
    let description2: String
    
    init(opportunity: Opportunity) {
        imageUrl        = opportunity.coverPhotoUrls                    ?? ""
        title           = opportunity.title                             ?? ""
        description1    = opportunity.office?.name                      ?? ""
        description2    = (opportunity.location ?? opportunity.city)    ?? ""
    }
}


class OpportunityCell: BFPaperTableViewCell {

    static let IDENTIFIER   = "OPPORTUNITY_LIST_CELL"
    static let NIB_NAME     = "OpportunityCell"
    
    
    var coverImageUrl: String?
    @IBOutlet var imageLoadingIndicator: MDCActivityIndicator!
    @IBOutlet var coverImage: UIImageView!
    @IBOutlet var title: UILabel!
    @IBOutlet var description1: UILabel!
    @IBOutlet var description2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    
    public func fillWith(info: OpportunityCellInfo) {
        title.text          = info.title
        description1.text   = info.description1
        description2.text   = info.description2
        coverImageUrl       = info.imageUrl
        
        coverImage.image = nil
        imageLoadingIndicator.startAnimating()
    }
    
    
    public func loadCoverImage() {
        if let imgUrlString = coverImageUrl, let imageUrl = URL(string: imgUrlString) {
            coverImage.sd_setImage(with: imageUrl, completed: { (img, error, cacheType, url) in
                if error == nil {
                    self.imageLoadingIndicator.stopAnimating()
                }
            })
        }
        
    }

}


















