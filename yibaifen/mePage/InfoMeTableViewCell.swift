//
//  InfoMeTableViewCell.swift
//  
//
//  Created by bluesky on 2019/7/14.
//

import UIKit

class InfoMeTableViewCell: UITableViewCell {


    
    @IBOutlet weak var iconImage: UIImageView!
    
    @IBOutlet weak var contextLabel: UILabel!
    
    
    
    @IBOutlet weak var nextImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
