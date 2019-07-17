//
//  segtableview.swift
//  hundredpoint
//
//  Created by 郑祺琛 on 2019/7/16.
//  Copyright © 2019 郑祺琛. All rights reserved.
//

import UIKit

class segtableview: UITableView,UITableViewDelegate,UITableViewDataSource {
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return type+3
        }else{
            return 2
        }
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        if  indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "subject", for: indexPath) as! tableviewcell
            
            switch type{
            case 0:
                switch indexPath.row{
                case 0:
                    cell.subject.text = "高等数学A3"
                    cell.progress.text = "60%"
                    cell.progressview.progress = 0.6
                    cell.time.text = "1小时10分钟"
                    break
                case 1:
                    cell.subject.text = "C++"
                    cell.progress.text = "10%"
                    cell.progressview.progress = 0.1
                    cell.time.text = "10分钟"
                    break
                case 2:
                    cell.subject.text = "离散数学"
                    cell.progress.text = "90%"
                    cell.progressview.progress = 0.9
                    cell.time.text = "1小时55分钟"
                    break
                default:
                    break
                }
                
                
                break
            case 1:
                switch indexPath.row{
                case 0:
                    cell.subject.text = "高等数学A3"
                    cell.progress.text = "60%"
                    cell.progressview.progress = 0.6
                    cell.time.text = "1小时10分钟"
                    break
                case 1:
                    cell.subject.text = "C++"
                    cell.progress.text = "10%"
                    cell.progressview.progress = 0.1
                    cell.time.text = "10分钟"
                    break
                case 2:
                    cell.subject.text = "离散数学"
                    cell.progress.text = "90%"
                    cell.progressview.progress = 0.9
                    cell.time.text = "1小时50分钟"
                    break
                case 3:
                    cell.subject.text = "计算机组成原理"
                    cell.progress.text = "30%"
                    cell.progressview.progress = 0.3
                    cell.time.text = "30分钟"
                    break
                default:
                    break
                }
                
                
                break
            case 2:
                switch indexPath.row{
                case 0:
                    cell.subject.text = "数据结构"
                    cell.progress.text = "35%"
                    cell.progressview.progress = 0.35
                    cell.time.text = "35分钟"
                    break
                case 1:
                    cell.subject.text = "近代史"
                    cell.progress.text = "45%"
                    cell.progressview.progress = 0.45
                    cell.time.text = "55分钟"
                    break
                case 2:
                    cell.subject.text = "概率论"
                    cell.progress.text = "10%"
                    cell.progressview.progress = 0.1
                    cell.time.text = "10分钟"
                    break
                case 3:
                    cell.subject.text = "模拟电路"
                    cell.progress.text = "55%"
                    cell.progressview.progress = 0.55
                    cell.time.text = "55分钟"
                    break
                case 4:
                    cell.subject.text = "大学英语"
                    cell.progress.text = "70%"
                    cell.progressview.progress = 0.7
                    cell.time.text = "1小时20分钟"
                    break
                    
                default:
                    break
                }
                
                
                
                break
            default:
                break
            }
            return cell
        }else{
             let cell = tableView.dequeueReusableCell(withIdentifier: "message", for: indexPath) as! msgtableviewcell
            switch type{
            case 0:
                switch indexPath.row{
                case 0:
                    cell.msglabel.text = "今天共学习5小时20分钟"
                    break
                case 1:
                    cell.msglabel.text = "请再接再厉！"
                    break
                default:
                    break
                }
                break
            case 1:
                switch indexPath.row{
                case 0:
                    cell.msglabel.text = "本周共学习47小时12分钟"
                    break
                case 1:
                    cell.msglabel.text = "有未完成任务，要更加专注哦！"
                    break
                default:
                    break
                }
                break
            case 2:
                switch indexPath.row{
                case 0:
                    cell.msglabel.text = "已累计复习了53小时4分钟"
                    break
                case 1:
                    cell.msglabel.text = "加油，胜利就在眼前！"
                    break
                default:
                    break
                }
                break
            default:
                break
            }
            
            return cell
            
        }
        
        
       
        
        

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 100
        }else{
            return 70
        }
    }
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
        
    }

    var type :Int = 0
    
    func updateType (type:Int){
        self.type = type
        
        
        self.reloadData()
        
        
    }

}
