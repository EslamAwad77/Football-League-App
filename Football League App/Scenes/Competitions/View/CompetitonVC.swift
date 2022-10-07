//
//  CompetitonVC.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import UIKit

class CompetitonVC: UIViewController {

    // Variables :-
    var controller: CompetitonController? = CompetitonController()
    var competitions: [CompetitionModel] = []
    // Outlets :-
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var lblErrorDesc: UILabel!
    
    // Actions :-
    @IBAction func btnReloadingPagePressed(_ sender: UIButton) {
    }
    
   
}

// Lifecycle Of Screen : -

extension CompetitonVC{
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
}

extension CompetitonVC{
    private func setupUI(){
        getData()
        tblView.delegate = self
        tblView.dataSource = self
        tblView.register(UINib.init(nibName: Config.Nibs.competitionCell, bundle: nil), forCellReuseIdentifier: Config.Nibs.competitionCell)
    }
}

extension CompetitonVC{
    func getData(){
        controller?.loadCompetition(success: { response in
            if !(response.isEmpty){
                self.competitions = response
                self.tblView.reloadData()
            } else{
                //self.showError()
                //self.lblErrorDesc.text = "Can't Loading Data(Cities)"
            }
        }, error: { err in
            print(err)
            self.showAlert(message: err)
        })
    }
}

extension CompetitonVC{
    
}

extension CompetitonVC{
    
}
