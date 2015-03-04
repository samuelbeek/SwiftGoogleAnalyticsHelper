//
//  GoogleAnalyticsHelper.swift
//  GoogleAnalyticsHelper
//
//  Created by Samuel Beek on 18-02-15.
//  Copyright (c) 2015 Samuel Beek. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // sets screen name and send it to Google Analytics
    func trackScreen(name: String) {
        self.title = name
        self.sendScreenView()
    }
    
    func sendScreenView() {
        let tracker = GAI.sharedInstance().defaultTracker
        tracker.set(kGAIScreenName, value: self.title)
        tracker.send(GAIDictionaryBuilder.createScreenView().build())
    }
    
    // sends an event to Google Analytics
    func trackEvent(category: String, action: String, label: String, value: NSNumber?) {
        let tracker = GAI.sharedInstance().defaultTracker
        let trackDictionary = GAIDictionaryBuilder.createEventWithCategory(category, action: action, label: label, value: value).build()
        tracker.send(trackDictionary)
    }
    
}

// sends the user id to Google Analytics
func setTrackedUserID(id: String){
    GAI.sharedInstance().defaultTracker.set("&uid", value: id)
}