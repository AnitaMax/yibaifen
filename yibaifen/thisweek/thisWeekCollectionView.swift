//
//  thisWeekCollectionView.swift
//  yibaifen
//
//  Created by HP on 2019/7/14.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit

class thisWeekCollectionView: UICollectionView ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate=self
        self.dataSource = self
        
        //setlayout()
        //addtasks()
        
    }
    var tasks:[task] = [task]()
    func addtasks(){
       tasks.append(task(day: 1, time: 1, content: "英语", place: "精心楼 f1",color:UIColor.orange))
        tasks.append(task(day: 1, time: 2, content: "高数", place: "逸夫楼 b121",color:UIColor.orange))
        tasks.append(task(day: 4, time: 1, content: "英语", place: "精心楼 f1",color:UIColor.orange))
        tasks.append(task(day: 4, time: 2, content: "高数", place: "逸夫楼 b121",color:UIColor.orange))
        tasks.append(task(day: 2, time: 2, content: "复习高数和英语", place: "逸夫楼 b121",color:UIColor.orange,review: true))
       tasks.append(task(day: 6, time: 2, content: "复习高数和英语", place: "逸夫楼 b121",color:UIColor.orange,review: true))
        tasks.append(task(day: 5, time: 1, content: "复习英语", place: "逸夫楼 b121",color:UIColor.orange,review: true))
         tasks.append(task(day: 5, time: 2, content: "复习高数", place: "精心楼 b121",color:UIColor.orange,review: true))
         tasks.append(task(day: 5, time: 3, content: "C++", place: "精心楼 b121",color:UIColor.orange))
        tasks.append(task(day: 3, time: 3, content: "C++", place: "精心楼 b121",color:UIColor.orange))
        tasks.append(task(day: 4, time: 4, content: "复习C++", place: "精心楼 b121",color:UIColor.orange,review: true))
         tasks.append(task(day: 6, time: 4, content: "复习C++", place: "精心楼 b121",color:UIColor.orange,review: true))
        tasks.append(task(day: 3, time: 2, content: "体育", place: "精心楼 b121",color:UIColor.orange))
         tasks.append(task(day: 1, time: 5, content: "心理学与生活", place: "精心楼 b121",color:UIColor.orange))
         tasks.append(task(day: 3, time: 5, content: "心理学与生活", place: "精心楼 b121",color:UIColor.orange))
          tasks.append(task(day: 7, time: 2, content: "复习心理学与生活", place: "精心楼 b121",color:UIColor.orange,review: true))
         tasks.append(task(day: 1, time: 3, content: "计算机道德", place: "精心楼 b121",color:UIColor.orange))
          tasks.append(task(day: 4, time: 4, content: "马克思思想", place: "精心楼 b121",color:UIColor.orange))
        tasks.append(task(day: 2, time: 4, content: "马克思思想", place: "精心楼 b121",color:UIColor.orange))
       tasks.append(task(day: 7, time: 4, content: "复习马克思思想", place: "精心楼 b121",color:UIColor.orange,review: true))

        
    }
    func setlayout(){
        let layout = UICollectionViewFlowLayout.init()
        let wid=(self.bounds.width-30)/7
        layout.itemSize = CGSize.init(width: wid, height: 100)
        //layout.minimumLineSpacing = 30
        layout.minimumInteritemSpacing = 0
        layout.sectionInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        
        self.collectionViewLayout = layout
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    
    
    var review = false

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(indexPath.row==0){
            let cell:numberCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "number", for: indexPath) as! numberCollectionViewCell
            cell.setNum(num: indexPath.section+1)
            return cell
        }
        let cell :thisWeekCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "thisWeekCell", for: indexPath) as!thisWeekCollectionViewCell
        for atask in tasks{
            if(atask.day==indexPath.row && atask.time == indexPath.section+1){
                if(!review){
                    if(atask.review){
                        cell.setNotEnable()
                        return cell
                    }
                }
                if(atask.content.count > 4){
                    cell.contentLabel.font = UIFont.systemFont(ofSize: CGFloat(19-atask.content.count))
                }
                else{
                    cell.contentLabel.font = UIFont.systemFont(ofSize: CGFloat(20))
                }
                cell.setCell(content: atask.content, place: atask.place, color: atask.color)
                return cell

            }
        }
        cell.setNotEnable()
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let wid=(self.bounds.width-30)/7
        if(indexPath.row==0){
                    return CGSize(width: 30, height: 120)
            
        }
        return  CGSize(width: wid, height: 120)

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
