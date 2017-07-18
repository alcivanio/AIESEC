//
//  OpportunitiesListViewController.swift
//  AIESEC
//
//  Created by Alcivanio on 15/06/17.
//  Copyright © 2017 Alcivanio. All rights reserved.
//

import UIKit

class OpportunitiesListViewController: UIViewController {

    var opportunities       = [OpportunitiesList]()
    
    
    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initElements()
        
        OpportunityService.loadOpportunities(atPage: 1, count: 1) { (opts) in
            self.opportunities = [opts!]
            self.table.reloadData()
        }
        
    }
    
    
    private func initElements() {
        configureTable()
        configureInfiniteScroll()
    }
    
    
    private func configureTable() {
        //configuring cell sizes
        table.rowHeight             = UITableViewAutomaticDimension
        table.estimatedRowHeight    = 220
    
        //configuring the spaces inside the table
        table.contentInset.top      = 20
        table.contentInset.bottom   = 10
    }
    
    
    private func configureInfiniteScroll() {
        table.addInfiniteScroll { (tableView) in
            
            let nextPage = self.opportunities.getNextPage()
            if nextPage != nil {
                OpportunityService.loadOpportunities(atPage: nextPage ?? 0, count: 12, completion: { (result) in
                    if result != nil {
                        self.opportunities.append(result!)
                        self.table.finishInfiniteScroll()
                        self.table.reloadData()
                    }
                    
                })
            }
            
            
        }
    }



}





extension OpportunitiesListViewController: UITableViewDelegate {

}


extension OpportunitiesListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return opportunities.countOpportunities()
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: OpportunityCell?
        cell = tableView.dequeueReusableCell(withIdentifier: OpportunityCell.IDENTIFIER) as? OpportunityCell
        
        if cell == nil {
            let nibCell = UINib(nibName: OpportunityCell.NIB_NAME, bundle: nil)
            tableView.register(nibCell, forCellReuseIdentifier: OpportunityCell.IDENTIFIER)
            
            cell = tableView.dequeueReusableCell(withIdentifier: OpportunityCell.IDENTIFIER) as? OpportunityCell
        }
        
        let cOpportunity = opportunities.allOpportunities()[indexPath.row]
        let info = OpportunityCellInfo(opportunity: cOpportunity)
        
        cell?.fillWith(info: info)
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let opportunityCell = cell as? OpportunityCell {
            opportunityCell.loadCoverImage()
        }
    }

}
