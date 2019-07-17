//
//  tableviewcell.swift
//  hundredpoint
//
//  Created by 郑祺琛 on 2019/7/16.
//  Copyright © 2019 郑祺琛. All rights reserved.
//

import UIKit

class tableviewcell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBOutlet weak var subject: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var progress: UILabel!
    
    @IBOutlet weak var progressview: UIProgressView!
    
    

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
