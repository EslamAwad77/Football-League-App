//
//  CompetitionTeamsVC.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import UIKit
import ESPullToRefresh
import PullToRefresh

class CompetitionTeamsVC: UIViewController {
    // Variables :-
    var controller: CompetitionTeamsController? = CompetitionTeamsController()
    var competitionsTeams: [CompetitionTeamsModel] = []
    
    // Outlets :-
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var activityLoadingPage: UIActivityIndicatorView!
    @IBOutlet weak var viewReloading: UIView!
    @IBOutlet weak var lblErrorDesc: UILabel!
    
    
    // Actions :-
    @IBAction func btnReloadingPagePressed(_ sender: UIButton) {
        loadData()
        getData()
    }
    
    
}

// Lifecycle :-

extension CompetitionTeamsVC{
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        getData()
    }
}

extension CompetitionTeamsVC{
    private func setupUI(){
        loadData()
        self.pullTorefresh()
        tblView.delegate = self
        tblView.dataSource = self
        tblView.register(UINib.init(nibName: Config.Nibs.competitionTeams, bundle: nil), forCellReuseIdentifier: Config.Nibs.competitionTeams)
    }
}

extension CompetitionTeamsVC{
    func loadData(){
        self.activityLoadingPage.startAnimating()
        self.viewReloading.alpha = 0
        self.tblView.alpha = 0
    }
}

extension CompetitionTeamsVC{
    func getData(){
        controller?.loadCompetitionTeams(success: { response in
            self.tblView.es.stopPullToRefresh()
            self.tblView.es.stopLoadingMore()
            self.hideError()
            if !(response.isEmpty){
                self.competitionsTeams = response
                self.tblView.reloadData()
            } else{
                self.showError()
                self.lblErrorDesc.text = "Can't Loading Competition Teams"
            }
        }, error: { err in
            self.showError()
            self.lblErrorDesc.text = err
            DispatchQueue.main.async {
                self.showAlert(message: err)
            }
        })
    }
}

extension CompetitionTeamsVC{
    func hideError(){
        self.tblView.alpha = 1
        self.viewReloading.alpha = 0
        self.activityLoadingPage.stopAnimating()
        self.activityLoadingPage.alpha = 0
    }
}

extension CompetitionTeamsVC{
    func pullTorefresh(){
        //if refresh from Top
        self.tblView.es.addPullToRefresh { [weak self] in
            guard let self = self else{return}
            self.getData()
        }
        
        //if refresh from Bottom
        self.tblView.es.addInfiniteScrolling { [weak self] in
            guard let self = self else { return }
            self.getData()
        }
    }
}

extension CompetitionTeamsVC{
    func showError(){
        self.activityLoadingPage.alpha = 0
        self.activityLoadingPage.stopAnimating()
        self.viewReloading.alpha = 1
        self.tblView.alpha = 0
    }
}

extension CompetitionTeamsVC{
    
}

extension CompetitionTeamsVC{
    
}
