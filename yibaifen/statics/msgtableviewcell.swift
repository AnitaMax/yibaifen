//
//  msgtableviewcell.swift
//  hundredpoint
//
//  Created by 郑祺琛 on 2019/7/16.
//  Copyright © 2019 郑祺琛. All rights reserved.
//

import UIKit

class msgtableviewcell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var msglabel: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
