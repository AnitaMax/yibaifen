//
//  MeTableViewController.swift
//  
//
//  Created by bluesky on 2019/7/14.
//

import UIKit

class MeTableViewController: UITableViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if(section == 0){
            return 2
        }
        else{
            return 2
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileMeTableViewCell", for: indexPath) as? ProfileMeTableViewCell else{
                fatalError("profile transition1 wrong")
            }
        
        let photo = UIImage(named: "profile")
        cell.profileImageView.image = photo
        //cell.Name.text =
        // Configure the cell...

        return cell
        }
            else{
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "LevelMeTableViewCell", for: indexPath) as? LevelMeTableViewCell else{
                    fatalError("level transition1 wrong")
            }
                return cell
        }
    }
        else{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "InfoMeTableViewCell", for: indexPath) as? InfoMeTableViewCell else{
                fatalError("info transition2 wrong")
            }
                if(indexPath.row == 0){
                    cell.contextLabel.text = "学习统计"
                    //icon
                    let photo = UIImage(named: "graphics")
                    cell.iconImage.image = photo
                    
                }
                else{
                    cell.contextLabel.text = "设置"
                    let photo = UIImage(named: "setting")
                    cell.iconImage.image = photo
                    
                    
                }
              let photo2 = UIImage(named: "next")
              cell.nextImage.image = photo2
                return cell
            }
            
            
            // Configure the cell...
            
        
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.section==0 && indexPath.row==0){
            return 150
        }
        return 60
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //return animalSectionTitles[section]
        return " "
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //拿到storyBoard
        if(indexPath.section == 1 && indexPath.row == 1){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        //拿到ViewController
        let nextPage = storyBoard.instantiateViewController(withIdentifier: "setting") as! SettingUITableiewController
        //传值
        //nextPage.id = joinUsDataArray[indexPath.row].id
        //nextPage.titleOfNavi.title = joinUsDataArray[indexPath.row].title
        //跳转
        self.navigationController?.pushViewController(nextPage, animated: true)
        }
      //i添加学习统计跳转
       
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
