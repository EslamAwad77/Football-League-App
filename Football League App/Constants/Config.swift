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
    }
    
    struct StoryBoards{
        static let competiton = "CompetitonVC"
    }
    
    struct ViewControllers{
        
    }
    
    struct APIs{
        static let competition = "https://api.football-data.org/v2/competitions"
        static let competitionDetails = "https://api.football-data.org/v2/competitions/2000"
        static let competitionTeams = "https://api.football-data.org/v2/competitions/2000/teams"
    }
}
