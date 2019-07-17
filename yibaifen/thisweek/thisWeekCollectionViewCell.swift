//
//  thisWeekCollectionViewCell.swift
//  
//
//  Created by HP on 2019/7/15.
//

import UIKit

class thisWeekCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBOutlet weak var placeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setNotEnable()

    }
    func setNotEnable(){
        contentLabel.text = ""
        placeLabel.text = ""
        self.isUserInteractionEnabled = false
        self.layer.borderWidth = 0
    }

    func setStyle(color:UIColor){
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 1
        self.layer.masksToBounds = true
    }
    func setCell(content:String,place:String,color:UIColor){
        contentLabel.text = content
        placeLabel.text = place
        setStyle(color: color)
        self.isUserInteractionEnabled = true
    }
}
