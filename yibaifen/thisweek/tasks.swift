//
//  tasks.swift
//  yibaifen
//
//  Created by HP on 2019/7/16.
//  Copyright © 2019 jlu. All rights reserved.
//

import Foundation
import UIKit
class task{
    var day:Int
    var time:Int
    var content:String
    var place:String
    var color:UIColor
    var review:Bool = false
   /*
    init(day:Int,time:Int,content:String,place:String,color:UIColor) {
        self.day=day
        self.time=time
        self.content=content
        self.place=place
        self.color=color
    }*/
    init(day:Int,time:Int,content:String,place:String,color:UIColor,review:Bool = false) {
        self.day=day
        self.time=time
        self.content=content
        self.place=place
        self.color=color
        self.review=review
    }
}
