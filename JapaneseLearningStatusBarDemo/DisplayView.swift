//
//  DisplayView.swift
//  JapaneseLearningStatusBarDemo
//
//  Created by OlympusKnight on 2018/7/19.
//  Copyright © 2018 OlympusKnight. All rights reserved.
//

import Cocoa

class DisplayView: NSView {

    @IBOutlet weak var lessonComboBox: NSComboBox!
    @IBOutlet weak var tangoLabel: NSTextField!
    @IBOutlet weak var kanaLabel: NSTextField!
    @IBOutlet weak var explainLabel: NSTextField!
    @IBOutlet weak var changeWordBtn: NSButton!
    
    var path = ""
    var text = ""
    var myStringArray = [""]
    var index = 0
    var lesson = ""
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
        for i in 0...dataSource.lessonArray.count-1 {
            lessonComboBox.addItem(withObjectValue: dataSource.lessonArray[i])
        }
        
        lesson = lessonComboBox.placeholderString!
        path = Bundle.main.path(forResource: lesson, ofType: "txt")!
        text = try! String(contentsOfFile: path, encoding: String.Encoding.utf8)
        myStringArray = text.components(separatedBy: "\r\n")
    }
    
    @IBAction func selectLesson(_ sender: NSComboBox) {
        lesson = lessonComboBox.stringValue
        path = Bundle.main.path(forResource: lesson, ofType: "txt")!
        text = try! String(contentsOfFile: path, encoding: String.Encoding.utf8)
        myStringArray = text.components(separatedBy: "\r\n")
    }
    
    @IBAction func changeTango(_ sender: NSButton) {
        index = randomWordFromWordsArray(from: myStringArray)
        let oneString = myStringArray[index]
        let oneTangoArray = oneString.components(separatedBy: "\t")
        tangoLabel.stringValue = oneTangoArray[0]
        kanaLabel.stringValue = oneTangoArray[1]
        explainLabel.stringValue = oneTangoArray[2]
    }
    
    func randomWordFromWordsArray(from array: Array<Any>) -> Int {
        let index = Int(arc4random_uniform(UInt32(array.count-1)))
        return index
    }
}
