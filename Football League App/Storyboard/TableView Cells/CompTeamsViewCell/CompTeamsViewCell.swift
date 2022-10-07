//
//  CompTeamsViewCell.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import UIKit

class CompTeamsViewCell: UITableViewCell {
    //Outlets :-
    @IBOutlet weak var imgViewTeam: UIImageView!
    @IBOutlet weak var lblTeamName: UILabel!
    @IBOutlet weak var lblTeamShortName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
