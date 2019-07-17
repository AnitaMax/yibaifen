//
//  sumviewcontrollerViewController.swift
//  hundredpoint
//
//  Created by 郑祺琛 on 2019/7/16.
//  Copyright © 2019 郑祺琛. All rights reserved.
//

import UIKit

class sumviewcontrollerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = UIColor.clear
        self.segment.tableFooterView = view
        
        // Do any additional setup after loading the view.
    }
    


    @IBOutlet weak var segment: segtableview!
    
    
    @IBAction func seg(_ sender: UISegmentedControl) {
        segment.updateType(type: sender.selectedSegmentIndex)
        
        
        
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
