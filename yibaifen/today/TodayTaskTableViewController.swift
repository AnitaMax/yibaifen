//
//  TodayTaskTableViewController.swift
//  yibaifen
//
//  Created by HP on 2019/7/13.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit
import UserNotifications

class TodayTaskTableViewController: UITableViewController,UNUserNotificationCenterDelegate {

    private let categoryid = "categoryid"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        //self.tableView.isScrollEnabled=false
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        
        
        print("here")
        let b = UIButton(frame: view.bounds);
        b.setTitle("10秒钟之后发送通知", for: .normal)
        b.setTitleColor(UIColor.red, for: .normal)
        b.addTarget(self, action: #selector(send), for: .touchUpInside)
        view.addSubview(b)
        
        // 1. 注册通知权限
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound, .carPlay]) { (success, error) in
            print("iOS 10+ 通知授权" + (success ? "成功" : "失败"))
        }
        
        // 2. 设置交互
        let replayAction = UNTextInputNotificationAction(identifier: "replayAction", title: "立即回复", options: [])
        let enterAction = UNNotificationAction(identifier:"enterAction",title: "进入会话",options: .foreground)
        let stopAction = UNNotificationAction(identifier:"stopAction",title: "关闭",options: .destructive)
        let categroy = UNNotificationCategory(identifier: categoryid,actions: [replayAction, enterAction, stopAction],intentIdentifiers: [],options: UNNotificationCategoryOptions(rawValue: 0))
        UNUserNotificationCenter.current().setNotificationCategories([categroy])
        
        // 3.设置通知代理，用于检测交互点击方法
        UNUserNotificationCenter.current().delegate = self
    }

    
    //发送通知消息
    
    @objc func send() {
        
        //4. 设置本地通知相关的属性 // 应该使用UNNotificationContent的子类来进行设定
        let content = UNMutableNotificationContent() //iOS 10
        
        // 设置应用程序的数字角标
        content.badge = 1
        
        // 设置声音
        content.sound = UNNotificationSound.default
        
        // 设置内容
        content.title = "易百分"
        // content.subtitle = "给你发了一条消息"
        content.body =
        """
        5分钟后开始高数复习，请做好学习准备
        """
        
        //5. 设置附件 可以是 音频 视频 图片 大小有限制
        // let path = URL(fileURLWithPath: Bundle.main.path(forResource: "icon1.jpg", ofType: nil)!)
        // let att = try! UNNotificationAttachment(identifier: "icon", url: path, options: nil)
        //content.attachments = [att]
        
        //6. 设置触发时间及重复 用UNNotificationTrigger的子类实现
        /*
         UNPushNotificationTrigger
         UNTimeIntervalNotificationTrigger
         UNCalendarNotificationTrigger
         UNLocationNotificationTrigger
         */
        //TimeInterval: 发送通知的时间 repeats: 设置重复
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        
        //将categroy赋值到通知内容上
        content.categoryIdentifier = categoryid;
        
        
        //7.设置通知请求
        //Identifier: 通知的标示符, 用于区分不同的本地通知的
        //content: 相当于以前的设置本地通知属性的步骤  trigger: 设置触发时间及重复的类
        let request = UNNotificationRequest(identifier: "local", content: content, trigger: trigger)
        
        
        //8. 通过用户通知中心来添加一个本地通知的请求
        UNUserNotificationCenter.current().add(request) { (error) in
            if error == nil {
                print("通知完成 \(content)")
            }
        }
    }
    
    //MARK: 通知代理
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        print("收到了点击事件 \(response)")
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TodayTaskTableViewCell = tableView.dequeueReusableCell(withIdentifier: "todayTaskCell", for: indexPath) as! TodayTaskTableViewCell

        if(indexPath.row==2){
            cell.setColor(color: UIColor.red)
            cell.setCell(content: "C++", time: "下午1:30 - 3:00", place: "精心楼")
        }
        else if(indexPath.row == 1 ){
            cell.setColor(color: UIColor.blue)
            cell.setCell(content: "复习高数", time: "上午10:00 - 11:30", place: "精心楼")
        }
        else if(indexPath.row == 0 ){
            cell.setColor(color: UIColor.orange)
            cell.setCell(content: "复习英语", time: "上午8:00 - 9:30", place: "逸夫楼")
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let zhuanzhu=(self.tabBarController?.viewControllers?[1] as! UINavigationController).viewControllers[0] as! tomatoViewController
        let title=(self.tableView.cellForRow(at: indexPath) as! TodayTaskTableViewCell).contentLabel.text ?? "复习高数"
        zhuanzhu.updateContent(title: title)
       // zhuanzhu.titleLabel.title = (self.tableView.cellForRow(at: indexPath) as! TodayTaskTableViewCell).contentLabel.text
        self.tabBarController?.selectedIndex = 1
       
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
