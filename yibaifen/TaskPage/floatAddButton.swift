//
//  floatAddButton.swift
//  yibaifen
//
//  Created by HP on 2019/7/14.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit

class floatAddButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        self.alpha = 0.3
        
    }
    override func didMoveToSuperview() {
        let w = self.frame.size.width;
        let h = self.frame.size.height;
        
        let frame:CGRect = CGRect(x: self.superview!.frame.size.width - w, y: self.superview!.frame.size.height - h-80, width: w, height: h)
        self.frame = frame
    }

}
