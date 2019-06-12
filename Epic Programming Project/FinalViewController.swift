//
//  FinalViewController.swift
//  Epic Programming Project
//
//  Created by Nicholas Kenney on 6/11/19.
//  Copyright © 2019 Nicholas Kenney. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var CalendarButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        CalendarButton.setImage(UIImage(named: "Presseds"), for: .selected)
    }
    
    @IBAction func AddCalendar(_ sender: Any) {
        
        
        
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
