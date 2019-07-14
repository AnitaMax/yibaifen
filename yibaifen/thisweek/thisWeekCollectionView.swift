//
//  thisWeekCollectionView.swift
//  yibaifen
//
//  Created by HP on 2019/7/14.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit

class thisWeekCollectionView: UICollectionView ,UICollectionViewDelegate,UICollectionViewDataSource{
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate=self
        self.dataSource = self
        
        setlayout()
    }
    func setlayout(){
        let layout = UICollectionViewFlowLayout.init()
        let wid=(self.bounds.width-30)/7
        layout.itemSize = CGSize.init(width: wid, height: 100)
        //layout.minimumLineSpacing = 30
        layout.minimumInteritemSpacing = 5
        layout.sectionInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        
        self.collectionViewLayout = layout
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell :thisWeekCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "thisWeekCell", for: indexPath) as!thisWeekCollectionViewCell
        
        return cell
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
