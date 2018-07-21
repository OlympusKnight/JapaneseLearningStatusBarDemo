//
//  StatusMenuController.swift
//  JapaneseLearningStatusBarDemo
//
//  Created by OlympusKnight on 2018/7/19.
//  Copyright © 2018 OlympusKnight. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {

    @IBOutlet weak var statusMenu: NSMenu!
    @IBOutlet weak var displayView: DisplayView!
    
    var displayItem: NSMenuItem!
    
    
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    override func awakeFromNib() {
        statusItem.title = "Learn"
        statusItem.menu = statusMenu
        displayItem = statusMenu.item(withTitle: "Display")
        displayItem.view = displayView
    }
    
    @IBAction func quitClick(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
}
