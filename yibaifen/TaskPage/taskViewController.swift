//
//  addViewController.swift
//  yibaifen
//
//  Created by HP on 2019/7/14.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit

class taskViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setFloatButton()
    }
    let but=floatAddButton()
    func setFloatButton(){
        but.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        but.setImage(UIImage(named: "addbut"), for: .normal)
        but.addTarget(self, action: #selector(butClik), for: .touchUpInside)
        self.view.addSubview(but)
        
    }
    @objc func butClik(){
        let mainStoryboard = UIStoryboard(name:  "Main", bundle: nil)
        let addViewC = mainStoryboard.instantiateViewController(withIdentifier: "addPage") as! addViewController
        //let addViewC = addViewController()
        but.isHidden=true
        self.pushViewController(addViewC, animated: true)
        
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
