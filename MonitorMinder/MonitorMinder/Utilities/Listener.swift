//
//  Listener.swift
//  MonitorMinder
//
//  Created by Noah King on 26/07/24.
//

import Foundation
import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Register for screen parameter changes
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(screenParametersDidChange),
            name: NSApplication.didChangeScreenParametersNotification,
            object: nil
        )
    }

    @objc func screenParametersDidChange(notification: Notification) {
        // Detect changes in screens
        let screens = NSScreen.screens
        print("Current screens: \(screens)")
        
        // You can check the count of screens to determine if an external monitor was added or removed
        // For example:
        if screens.count > 1 {
            print("External monitor detected.")
        } else {
            print("External monitor not detected.")
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Unregister the observer
        NotificationCenter.default.removeObserver(self)
    }
}



