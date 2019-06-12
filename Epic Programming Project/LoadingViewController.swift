//
//  LoadingViewController.swift
//  Epic Programming Project
//
//  Created by Nicholas Kenney on 6/11/19.
//  Copyright © 2019 Nicholas Kenney. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    @IBOutlet weak var Indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Indicator.startAnimating()
        
        let dispatch = DispatchQueue.main.asyncAfter(deadline: (DispatchTime.now() + 2)) {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "Final") as! FinalViewController
            self.present(vc, animated: true, completion: nil)
        }
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
