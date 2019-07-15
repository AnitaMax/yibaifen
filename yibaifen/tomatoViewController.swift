//
//  tomatoViewController.swift
//  yibaifen
//
//  Created by HP on 2019/7/15.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit

class tomatoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        startBut.layer.borderWidth = 1
        startBut.layer.borderColor = UIColor.blue.cgColor
        
        timeView.layer.borderColor = UIColor.orange.cgColor
        timeView.layer.borderWidth = 2
        timeView.layer.masksToBounds = true
        timeView.layer.cornerRadius = timeView.frame.size.width / 2
        
        timeLabel.text = String(format: "%d : %02d", minute,second)
    }
    

    @IBOutlet weak var startBut: UIButton!
    @IBOutlet weak var timeView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    
    var second:Int = 0
    var minute:Int = 0
    
    var reverse:Bool = false
    
    
    @IBAction func startLearn(_ sender: UIButton) {
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
