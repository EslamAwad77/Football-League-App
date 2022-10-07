//
//  CompetitionVC+TblView.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import UIKit

extension CompetitonVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return competitions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = competitions[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: Config.Nibs.competitionCell, for: indexPath) as! CompetitionViewCell
        cell.lblNoOfGames.text = item.numberOfAvailableSeasons.description
        cell.lblNoOfTeams.text = item.id.description
        cell.lblLongLeagueName.text = item.name
        cell.lblShortLeagueName.text = item.code
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

