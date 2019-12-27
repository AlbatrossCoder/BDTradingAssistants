//
//  AppDelegate.swift
//  BDTradingAssistants
//
//  Created by Albatross on 2019/12/26.
//  Copyright © 2019 Albatross. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var mainWindow:BaseWindowController!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        mainWindow = BaseWindowController(windowNibName: "BaseWindowController")
        mainWindow.window?.center()
        mainWindow.window?.orderFront(nil)
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        
        
        
    }


}

