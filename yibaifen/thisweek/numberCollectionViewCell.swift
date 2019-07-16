//
//  numberCollectionViewCell.swift
//  yibaifen
//
//  Created by HP on 2019/7/16.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit

class numberCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var numLabel: UILabel!
    func setNum(num:Int){
        numLabel.text = String(num)
    }
}
