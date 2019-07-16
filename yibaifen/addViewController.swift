//
//  addViewController.swift
//  yibaifen
//
//  Created by HP on 2019/7/14.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit
import Eureka

class addViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title="新任务"
        self.navigationItem.leftBarButtonItem=UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(backToPrevious) )
        self.navigationItem.rightBarButtonItem=UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(backToPrevious) )
        self.view.backgroundColor=UIColor.blue
        
        // Do any additional setup after loading the view.
        form +++ Section(" ")
            <<< TextRow(){ row in
                row.title = "课程"
                row.placeholder = "请输入课程名字"
            }
            
            <<< ActionSheetRow<String>(){
                $0.title = "性质"
                $0.selectorTitle = "请选择"
                $0.options = ["必修","选修","不考"]
                $0.value = "必修"
            }
            
            <<< ActionSheetRow<String>(){
                $0.title = "优先级"
                $0.selectorTitle = "请选择"
                $0.options = ["很重要","较重要","一般"]
                $0.value = "很重要"
                
            }
            
            +++ Section()
            <<< MultipleSelectorRow<String>(){
                $0.title = "上课日期"
                $0.selectorTitle = "请选择"
                $0.options = ["星期一","星期二","星期三","星期四","星期五","星期六","星期日"]
                
            }
            
            <<< TimeRow (){
                $0.title = "上课时刻"
                
            }
            <<< TimeRow (){
                $0.title = "下课时刻"
                
            }
            
            
            <<< PhoneRow(){
                $0.title = "课程开始周数"
                $0.placeholder = "请输入数字"
            }
            
            <<< PhoneRow(){
                $0.title = "课程结束周数"
                $0.placeholder = "请输入数字"
            }
            
            <<< ActionSheetRow<String>(){
                $0.title = "上课频率"
                $0.selectorTitle = "请选择"
                $0.options = ["仅单周","仅双周","单双周"]
                $0.value = "单双周"
        }
                
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
