//
//  CompetitonVC.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import UIKit
import ESPullToRefresh
import PullToRefresh

class CompetitonVC: UIViewController {
    
    // Variables :-
    var controller: CompetitonController? = CompetitonController()
    var competitions: [CompetitionModel] = []
    // Outlets :-
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var lblErrorDesc: UILabel!
    @IBOutlet weak var activityLoadingPage: UIActivityIndicatorView!
    @IBOutlet weak var viewReloading: UIView!
    
    // Actions :-
    @IBAction func btnReloadingPagePressed(_ sender: UIButton) {
        loadData()
        getData()
    }
}

// Lifecycle Of Screen : -

extension CompetitonVC{
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        getData()
    }
}

extension CompetitonVC{
    private func setupUI(){
        loadData()
        self.pullTorefresh()
        tblView.delegate = self
        tblView.dataSource = self
        tblView.register(UINib.init(nibName: Config.Nibs.competitionCell, bundle: nil), forCellReuseIdentifier: Config.Nibs.competitionCell)
    }
}

extension CompetitonVC{
    func loadData(){
        self.activityLoadingPage.startAnimating()
        self.viewReloading.alpha = 0
        self.tblView.alpha = 0
    }
}

extension CompetitonVC{
    func getData(){
        controller?.loadCompetition(success: { response in
            self.tblView.es.stopPullToRefresh()
            self.tblView.es.stopLoadingMore()
            self.hideError()
            if !(response.isEmpty){
                self.competitions = response
                self.tblView.reloadData()
            } else{
                self.showError()
                self.lblErrorDesc.text = "Can't Loading Competitions"
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

extension CompetitonVC{
    func hideError(){
        self.tblView.alpha = 1
        self.viewReloading.alpha = 0
        self.activityLoadingPage.stopAnimating()
        self.activityLoadingPage.alpha = 0
    }
}

extension CompetitonVC{
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

extension CompetitonVC{
    func showError(){
        self.activityLoadingPage.alpha = 0
        self.activityLoadingPage.stopAnimating()
        self.viewReloading.alpha = 1
        self.tblView.alpha = 0
    }
}



extension CompetitonVC{
    
}
