//
//  tomatoViewController.swift
//  yibaifen
//
//  Created by HP on 2019/7/15.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit
import FaveButton

class tomatoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        
        timeView.layer.borderColor = UIColor.blue.cgColor
        timeView.layer.borderWidth = 2
 
        timeView.layer.cornerRadius = timeView.frame.size.width / 2
        
        timeLabel.text = String(format: "%d : %02d", minute,second)
        
        
        /*
        let faveButton = FaveButton(frame: CGRect(x: 0, y: 0, width: 250, height: 250), faveIconNormal: UIImage(named: "start"))
        faveButton.delegate = self
        faveButton.isEnabled=true
        buttonView.addSubview(faveButton)*/

        
        //startBut.layer.borderWidth = 1
        //startBut.layer.borderColor = UIColor.orange.cgColor
        startBut.layer.cornerRadius = 5
        
        reverse = false
        reserBut.title = "倒计时"
        editBut.isEnabled = false
        
        startBut.setTitle("  开始学习!  ", for: .normal)
       timeView.layer.borderWidth = 0
    }
    func updateTimeLabel(){
             timeLabel.text = String(format: "%d : %02d", minute,second)
        
    }


    @IBOutlet weak var timeView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var startBut: UIButton!
    var second:Int = 0
    var minute:Int = 0
    var start = false
    var reverse:Bool = false
    

    @IBOutlet weak var editBut: UIBarButtonItem!
    
    @IBOutlet weak var reserBut: UIBarButtonItem!
    
    
    func updateContent(title:String){
        self.navigationItem.title = title
    }

    func endStart(){
        startBut.setTitle("  开始学习!  ", for: .normal)
        startBut.setTitleColor(UIColor.white, for: .normal)
        startBut.backgroundColor = UIColor.blue
        startBut.layer.borderWidth = 0
        start = false
        
        timeView.layer.borderWidth = 0
        reserBut.isEnabled = true
        
        if(!reverse){
            reserBut.title = "倒计时"
            editBut.isEnabled = false
            minute = 0
            second = 0
            updateTimeLabel()
        }
        else{
            reserBut.title = "计时"
            editBut.isEnabled = true
            minute = 25
            second = 0
            updateTimeLabel()
            
        }
    }
        
    @IBAction func reverseTimeModel(_ sender: UIBarButtonItem) {
        if(reverse){
            reverse = false
            reserBut.title = "倒计时"
            editBut.isEnabled = false
            minute = 0
            second = 0
            updateTimeLabel()
        }
        else{
            reverse = true
            reserBut.title = "计时"
            editBut.isEnabled = true
            minute = 25
            second = 0
            updateTimeLabel()
        }
    }

    @objc func timeChange(){
        if(reverse){
            print("\(self.minute) \(self.second)")
            if(self.second >= 1){
                self.second = self.second-1
            }else{
                if(self.minute >= 1 ){
                    self.minute = self.minute-1
                    self.second = 59
                }
                else{
                    self.endStart()
                }
            }
        }
        else{
            print("\(self.minute) \(self.second)")
            if(self.second >= 59){
                self.minute = self.minute+1
                self.second = 0
            }else{
                self.second = self.second+1
            }
        }
        updateTimeLabel()
    
    }
    var codeTimer:Timer!=nil
    @IBAction func startLearn(_ sender: UIButton) {

        if(!start){
            startBut.setTitle("  停止学习!  " ,for: .normal)
            startBut.backgroundColor = UIColor.white
            startBut.layer.borderWidth = 1
            startBut.layer.borderColor = UIColor.blue.cgColor
            startBut.setTitleColor(UIColor.blue, for: .normal)
            start = true
            
            timeView.layer.borderWidth = 2
            
            reserBut.isEnabled = false
            editBut.isEnabled = false
            if codeTimer==nil{
                codeTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeChange), userInfo: nil, repeats: true)
            }
            codeTimer.fire()

        }
        else{
            
            if (codeTimer != nil){
                codeTimer.fireDate = Date.distantFuture
                codeTimer.invalidate()
                codeTimer = nil
            }
             endStart()
            
        }
        
    }
    
}
