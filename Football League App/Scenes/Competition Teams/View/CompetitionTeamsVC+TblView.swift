//
//  CompetitionTeamsVC+TblView.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import Kingfisher

extension CompetitionTeamsVC: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return competitionsTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = competitionsTeams[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: Config.Nibs.competitionTeams, for: indexPath) as! CompTeamsViewCell
        cell.lblTeamName.text = item.name
        cell.lblTeamShortName.text = item.shortName
        if let url = URL(string: item.teamImage){
            cell.imgViewTeam.kf.setImage(with: url)
        }else {
            cell.imgViewTeam.image = UIImage.init(named:  "noClub")
            cell.imgViewTeam.contentMode = .scaleAspectFit
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 177
    }
    
}

