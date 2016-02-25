//
//  AppDelegate.swift
//  MultipleWindows
//
//  Created by Harry Ng on 25/2/2016.
//  Copyright © 2016 STAY REAL. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var windowController: PreferenceWindowController?

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func showPreference(sender: AnyObject) {
        if windowController == nil {
            windowController = PreferenceWindowController.loadFromNib()
        }
        windowController?.showWindow(self)
    }

}

