//
//  Config.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import Foundation

struct Config{
    struct Nibs{
        static let competitionCell = "CompetitionViewCell"
        static let competitionTeams = "CompTeamsViewCell"
    }
    
    struct StoryBoards{
        static let main = "Main"
    }
    
    struct ViewControllers{
        static let competition = "CompetitonVC"
        static let competitionTeams = "CompetitionTeamsVC"
    }
    
    struct APIs{
        static let competition = "https://api.football-data.org/v2/competitions"
        static let competitionDetails = "https://api.football-data.org/v2/competitions/2000"
        static let competitionTeams = "https://api.football-data.org/v2/competitions/2000/teams"
    }
}
