//
//  PagesViewController.swift
//  Epic Programming Project
//
//  Created by Kyle Halevi on 6/14/19.
//  Copyright © 2019 Nicholas Kenney. All rights reserved.
//

import UIKit

class PagesViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var ScrollView: UIScrollView!
    
    var pages : [Page] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollView.delegate = self
        
        pages = createPages()
        
        ScrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        ScrollView.contentSize = CGSize(width: view.frame.width * CGFloat(pages.count), height: view.frame.height)
        ScrollView.isPagingEnabled = true
        
        for num in 0 ..< pages.count {
            pages[num].frame = CGRect(x: view.frame.width * CGFloat(num), y: 0, width: view.frame.width, height: view.frame.height)
            ScrollView.addSubview(pages[num])
        }
        
        
    }
    
    func createPages() -> [Page] {
        
        let page1 : Page = Bundle.main.loadNibNamed("Page", owner: self, options: nil)?.first as! Page
        page1.ImageView.image = UIImage(named: "Aurora")
        
        let page2 : Page = Bundle.main.loadNibNamed("Page", owner: self, options: nil)?.first as! Page
        page2.ImageView.image = UIImage(named: "Williams")
        
        let page3 : Page = Bundle.main.loadNibNamed("Page", owner: self, options: nil)?.first as! Page
        page3.ImageView.image = UIImage(named: "Michael")
        
        let page4 : Page = Bundle.main.loadNibNamed("Page", owner: self, options: nil)?.first as! Page
        page4.ImageView.image = UIImage(named: "Dan")
        
        let page5 : Page = Bundle.main.loadNibNamed("Page", owner: self, options: nil)?.first as! Page
        page5.ImageView.image = UIImage(named: "Jack")
        
        let page6 : Page = Bundle.main.loadNibNamed("Page", owner: self, options: nil)?.first as! Page
        page6.ImageView.image = UIImage(named: "Taylor")
        
        let page7 : Page = Bundle.main.loadNibNamed("Page", owner: self, options: nil)?.first as! Page
        page7.ImageView.image = UIImage(named: "Nick")
        
        return [page1, page2, page3, page4, page5, page6, page7]
    }
}
