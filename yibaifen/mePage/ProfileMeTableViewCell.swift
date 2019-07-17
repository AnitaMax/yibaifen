//
//  ProfileMeTableViewCell.swift
//  yibaifen
//
//  Created by bluesky on 2019/7/14.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit

class ProfileMeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
