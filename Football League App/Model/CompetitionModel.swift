//
//  CompetitionModel.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import Foundation

class CompetitionModel{
    var id: Int = 0
    var area: AreaModel?
    var name: String = ""
    var code: String = ""
    var emblemUrl: String = ""
    var plan: String = ""
    var currentSeason: SeasonModel?
    var numberOfAvailableSeasons: Int = 0
    var lastUpdated: String = ""
    
    init(){}
    
    init(apiModel: [String: Any]?){
        self.id = (apiModel?["id"] as? Int) ?? 0
        self.area = AreaModel.init(apiModel: apiModel?["area"] as? [String: Any])
        self.name = (apiModel?["name"] as? String) ?? "No Name ِِExist"
        self.code = (apiModel?["code"] as? String) ?? "No code ِِExist"
        self.emblemUrl = (apiModel?["emblemUrl"] as? String) ?? "No emblemUrl ِِExist"
        self.plan = (apiModel?["plan"] as? String) ?? "No Plan ِِExist"
        self.currentSeason = SeasonModel.init(apiModel: apiModel?["currentSeason"] as? [String: Any])
        self.numberOfAvailableSeasons = (apiModel?["numberOfAvailableSeasons"] as? Int) ?? 0
        self.lastUpdated = (apiModel?["lastUpdated"] as? String) ?? "No lastUpdated ِِExist"
    }
}

class AreaModel{
    var id: Int = 0
    var name: String = ""
    var countryCode: String = ""
    var ensignUrl: String = ""
    
    init(){}
    init(apiModel: [String: Any]?){
        self.id = (apiModel?["id"] as? Int) ?? 0
        self.name = (apiModel?["name"] as? String) ?? "No Name Exist"
        self.countryCode = (apiModel?["countryCode"] as? String) ?? "No countryCode Exist"
        self.ensignUrl = (apiModel?["ensignUrl"] as? String) ?? "No ensignUrl Exist"
    }
}

class SeasonModel{
    var id: Int = 0
    var startDate: String = ""
    var endDate: String = ""
    var currentMatchday: Int = 0
    var winner: String = ""
    
    init(){}
    init(apiModel: [String: Any]?){
        self.id = (apiModel?["id"] as? Int) ?? 0
        self.startDate = (apiModel?["startDate"] as? String) ?? "No StratDate ِِExist"
        self.endDate = (apiModel?["endDate"] as? String) ?? "No endDate ِِExist"
        self.currentMatchday = (apiModel?["currentMatchday"] as? Int) ?? 0
        self.winner = (apiModel?["winner"] as? String) ?? "No winner ِِExist"
    }
}
