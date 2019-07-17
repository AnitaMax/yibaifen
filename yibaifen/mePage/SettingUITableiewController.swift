//
//  SettingUITableiewController.swift
//  
//
//  Created by bluesky on 2019/7/15.
//

import Eureka

class SettingUITableiewController: FormViewController{
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        form +++
             PhoneRow(){
                $0.title = "单科复习时长（分钟）"
                $0.placeholder = "30"
            }
            <<< ActionSheetRow<String>(){
                $0.title = "休息日"
                $0.selectorTitle = "请选择"
                $0.options = ["星期一","星期二","星期三","星期四","星期五","星期六","星期日","无"]
                $0.value = "无"
        }
        
            
        
        
        
    }
}
