//
//  TodayTaskTableViewCell.swift
//  yibaifen
//
//  Created by HP on 2019/7/13.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit

class TodayTaskTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //self.backgroundColor=UIColor.orange
        self.selectionStyle = .blue
    }
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    
    @IBOutlet weak var cardView: CardView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setColor(color:UIColor){
        cardView.shadowColor = color
        contentLabel.textColor = color
        timeLabel.textColor = color
        placeLabel.textColor = color
    }
    func setCell(content:String,time:String,place:String){
        contentLabel.text = content
        timeLabel.text = time
        placeLabel.text = place
        
    }

}
