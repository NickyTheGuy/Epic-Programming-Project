//
//  ViewController.swift
//  Epic Programming Project
//
//  Created by Nicholas Kenney on 5/23/19.
//  Copyright © 2019 Nicholas Kenney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Discover(_ sender: Any) {
        
        let NextImage = UIImageView(image: UIImage(named: "Wallpaper"))
        NextImage.frame = view.bounds
        NextImage.layer.position.x += view.frame.width
        view.addSubview(NextImage)
        
        UIView.animate(withDuration: 0.75, delay: 0, options: .curveEaseInOut, animations: {
            NextImage.layer.position.x -= self.view.frame.width
            self.MainImage.layer.position.x -= self.view.frame.width
        }, completion: {(finished: Bool) in
            NextImage.removeFromSuperview()
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "PagesViewController") as! PagesViewController
            vc.modalTransitionStyle = .crossDissolve
            self.present(vc, animated: true, completion: nil)
        })
        
    }
}

