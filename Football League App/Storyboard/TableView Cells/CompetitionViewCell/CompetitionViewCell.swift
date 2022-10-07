//
//  CompetitionViewCell.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import UIKit

class CompetitionViewCell: UITableViewCell {

    // Outlets :-
    @IBOutlet weak var lblNoOfTeams: UILabel!
    @IBOutlet weak var lblNoOfGames: UILabel!
    @IBOutlet weak var lblLongLeagueName: UILabel!
    @IBOutlet weak var lblShortLeagueName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
