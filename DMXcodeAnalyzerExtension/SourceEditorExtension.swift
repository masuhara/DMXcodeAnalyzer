//
//  SourceEditorExtension.swift
//  DMXcodeAnalyzerExtension
//
//  Created by Masuhara on 2016/11/19.
//  Copyright © 2016年 net.masuhara. All rights reserved.
//

import Foundation
import XcodeKit

class SourceEditorExtension: NSObject, XCSourceEditorExtension {
    
    var counter: Int = 0
    
    func extensionDidFinishLaunching() {
        // If your extension needs to do any work at launch, implement this optional method.
        print("Did finish Launching")
        let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer(timer:)), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    /*
    var commandDefinitions: [[XCSourceEditorCommandDefinitionKey: Any]] {
        // If your extension needs to return a collection of command definitions that differs from those in its Info.plist, implement this optional property getter.
        return []
    }
     */
    
    // Private 
    func updateTimer(timer: Timer) {
        counter += 1
        print(counter)
    }
    
}
