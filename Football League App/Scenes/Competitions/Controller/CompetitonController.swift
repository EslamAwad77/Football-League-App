//
//  CompetitonController.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import Alamofire

class CompetitonController{
    //Brain
    func loadCompetition(success:(([CompetitionModel])->())?,error:((String)->())?){
        let url = Config.APIs.competition
        AF.request(url).response { response in
            guard response.error == nil else {
                print("error \(response.error!)")
                return
            }
            switch response.result {
            case .success(let data) :
                    do {
                        let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any]
                        //print(json)
                        let competitionsArr = json?["competitions"] as? [[String: Any]]
                        var competitionModelArr = [CompetitionModel]()
                        for competition in competitionsArr ?? [] {
                            let model = CompetitionModel.init(apiModel: competition)
                            competitionModelArr.append(model)
                        }
                        success?(competitionModelArr)
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
