//
//  GoogleAnalyticsHelper.swift
//  GoogleAnalyticsHelper
//
//  Created by Samuel Beek on 18-02-15.
//  Copyright (c) 2015 Samuel Beek. All rights reserved.
//

import UIKit


extension UIViewController {
    
    func trackScreen(name: String) {
        self.sendScreenView(name)
    }
    
    func sendScreenView(name: String) {
        let tracker = GAI.sharedInstance().defaultTracker
        let build = GAIDictionaryBuilder.createAppView().set(name, forKey: kGAIScreenName).build() as NSDictionary
        tracker.send(build as [NSObject : AnyObject])
    }
    
    func trackEvent(category: String, action: String, label: String, value: NSNumber?) {
        let tracker = GAI.sharedInstance().defaultTracker
        let trackDictionary = GAIDictionaryBuilder.createEventWithCategory(category, action: action, label: label, value: value).build()
        tracker.send(trackDictionary as [NSObject : AnyObject])
    }

}

// sends the user id to Google Analytics
func setTrackedUserID(id: String){
    GAI.sharedInstance().defaultTracker.set("&uid", value: id)
}
