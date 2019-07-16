//
//  thisWeekCollectionViewCell.swift
//  
//
//  Created by HP on 2019/7/15.
//

import UIKit

class thisWeekCollectionViewCell: UICollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 3
        self.layer.masksToBounds = true
    }
}
