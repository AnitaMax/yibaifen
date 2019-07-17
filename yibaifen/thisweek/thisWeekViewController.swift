//
//  thisWeekViewController.swift
//  yibaifen
//
//  Created by HP on 2019/7/17.
//  Copyright © 2019 jlu. All rights reserved.
//

import UIKit

class thisWeekViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        thisWeekCollection.addtasks()
    }
    
    @IBAction func generateReview(_ sender: UIBarButtonItem) {
        thisWeekCollection.review = !thisWeekCollection.review
        thisWeekCollection.reloadData()
    }
    
    
     @IBOutlet weak var thisWeekCollection: thisWeekCollectionView!
     // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
