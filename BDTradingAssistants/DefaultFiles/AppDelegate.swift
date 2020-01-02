//
//  AppDelegate.swift
//  BDTradingAssistants
//
//  Created by Albatross on 2019/12/26.
//  Copyright © 2019 Albatross. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSWindowDelegate {
    
    var mainWindow:BaseWindowController!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        mainWindow = BaseWindowController(windowNibName: "BaseWindowController")
        mainWindow.window?.delegate = self
        mainWindow.window?.center()
        mainWindow.window?.orderFront(nil)
        
    }
    
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        
        NSApp.activate(ignoringOtherApps: true)
        mainWindow.window?.orderFront(nil)
        
        return true
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        
        return false
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        print("applicationWillTerminate")
        
        
    }
    
    //MARK: NSWindowDelegate
    
    func windowShouldClose(_ sender: NSWindow) -> Bool {
        mainWindow.window?.orderOut(nil)
        return false
    }
    
}

