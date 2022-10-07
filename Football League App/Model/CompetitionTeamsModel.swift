//
//  CompetitionTeamsModel.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import Foundation

class CompetitionTeamsModel{
    var id: Int = 0
    var area: TeamsAreaModel?
    var name: String = ""
    var shortName: String = ""
    var tla: String = ""
    var teamImage: String = ""
    var address: String = ""
    var phone: String = ""
    var website: String = ""
    var email: String = ""
    var founded: Int = 0
    var clubColors: String = ""
    var venue: String = ""
    var lastUpdated: String = ""
    
    init(){}
    init(apiModel: [String: Any]?){
        self.id = (apiModel?["id"] as? Int) ?? 0
        self.area = TeamsAreaModel.init(apiModel: apiModel?["area"] as? [String: Any])
        self.name = (apiModel?["name"] as? String) ?? "No name Exist"
        self.shortName = (apiModel?["shortName"] as? String) ?? "No shortName Exist"
        self.tla = (apiModel?["tla"] as? String) ?? "No tla Exist"
        self.teamImage = (apiModel?["crestUrl"] as? String) ?? "No teamImage Exist"
        self.address = (apiModel?["address"] as? String) ?? "No address Exist"
        self.phone = (apiModel?["phone"] as? String) ?? "No phone Exist"
        self.website = (apiModel?["website"] as? String) ?? "No website Exist"
        self.email = (apiModel?["email"] as? String) ?? "No email Exist"
        self.founded = (apiModel?["founded"] as? Int) ?? 0
        self.clubColors = (apiModel?["clubColors"] as? String) ?? "No ClubColors Exist"
        self.venue = (apiModel?["venue"] as? String) ?? "No venue Exist"
        self.lastUpdated = (apiModel?["lastUpdated"] as? String) ?? "No lastUpdated Exist"
    }
}

class TeamsAreaModel{
    var id: Int = 0
    var name: String = ""
    
    init(){}
    
    init(apiModel: [String: Any]?){
        self.id = (apiModel?["id"] as? Int) ?? 0
        self.name = (apiModel?["name"] as? String) ?? "No areaName"
    }
}
