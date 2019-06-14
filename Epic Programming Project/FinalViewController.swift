//
//  FinalViewController.swift
//  Epic Programming Project
//
//  Created by Nicholas Kenney on 6/11/19.
//  Copyright © 2019 Nicholas Kenney. All rights reserved.
//

import UIKit
import EventKit

class FinalViewController: UIViewController {
    
    @IBOutlet weak var CalendarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CalendarButton.setImage(UIImage(named: "Presseds"), for: .selected)
        
    }
    
    func addEvent(store: EKEventStore) {
        let start = Date()
        let end = start.addingTimeInterval(60)
        
        let newEvent = EKEvent(eventStore: store)
        newEvent.calendar = store.defaultCalendarForNewEvents
        newEvent.title = "Vote for Kenney 2020"
        newEvent.startDate = start
        newEvent.endDate = end
        
        do {
            try store.save(newEvent, span: .thisEvent)
        }catch let error as NSError {
            print("Calendar failure: \(error)")
        }
    }
    
    @IBAction func AddCalendar(_ sender: Any) {
        
        let eventStore = EKEventStore()
        
        eventStore.requestAccess(to: .event, completion: {
            (granted: Bool, error: Error?) -> Void in
            if granted {
                self.addEvent(store: eventStore)
                
                DispatchQueue.main.asyncAfter(deadline: (DispatchTime.now() + 1)){
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
                    vc.modalTransitionStyle = .crossDissolve
                    self.present(vc, animated: true, completion: nil)
                }
                
                
            }else{
                exit(0)
            }
        })
        
    }
    
}
