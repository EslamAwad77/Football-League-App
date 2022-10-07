//
//  CompetitionTeamsController.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import Alamofire

class CompetitionTeamsController{
    //Brain
    func loadCompetitionTeams(success:(([CompetitionTeamsModel])->())?,error:((String)->())?){
        let url = Config.APIs.competitionTeams
        AF.request(url, headers: ["X-Auth-Token": "b3d79cbe816f47828b19a8f8f8d2a5a7"]).response { response in
            guard response.error == nil else {
                print("error \(response.error!)")
                return
            }
            switch response.result {
            case .success(let data) :
                    do {
                        let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any]
                        let competitionTeams = json?["teams"] as? [[String: Any]]
                        var teamModelArr = [CompetitionTeamsModel]()
                        for team in competitionTeams ?? [] {
                            let model = CompetitionTeamsModel.init(apiModel: team)
                            teamModelArr.append(model)
                        }
                        success?(teamModelArr)
                    } catch let err {
                        print(err.localizedDescription)
                        error?(err.localizedDescription)
                    }
            case .failure(let err) :
                print(err.localizedDescription)
                error?(err.localizedDescription)
            }
        }
    }
}
