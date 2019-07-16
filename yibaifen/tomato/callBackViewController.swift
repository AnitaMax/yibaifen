//
//  callBackViewController.swift
//  yibaifen
//
//  Created by HP on 2019/7/16.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit
import FaveButton

class callBackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        goodbut.delegate = goodbut
        normalbut.delegate = normalbut
        badbut.delegate = badbut
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var goodbut: FaveButton!
    @IBOutlet weak var normalbut: FaveButton!
    @IBOutlet weak var badbut: FaveButton!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
