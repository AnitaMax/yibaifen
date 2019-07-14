//
//  addViewController.swift
//  yibaifen
//
//  Created by HP on 2019/7/14.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit

class addViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title="新任务"
        self.navigationItem.leftBarButtonItem=UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(backToPrevious) )
        self.navigationItem.rightBarButtonItem=UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(backToPrevious) )
        self.view.backgroundColor=UIColor.blue
        
        // Do any additional setup after loading the view.
    }
    
    
    @objc func backToPrevious(){
        let task=self.navigationController as! taskViewController
        task.but.isHidden=false
        self.navigationController?.popViewController(animated: true)
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
