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
    var count = 0
    var date = NSDate().timeIntervalSince1970
    
    func extensionDidFinishLaunching() {
        // If your extension needs to do any work at launch, implement this optional method.
        NSLog("extension did finish launching")
        
        DispatchQueue.global().async {
            self.update()
        }
    }
    
    func updateCounter() {
        count += 1
        NSLog("%d", self.count)
    }
    
    func update() {
        if NSDate().timeIntervalSince1970 - date > 0.9 {
            date = NSDate().timeIntervalSince1970
            updateCounter()
        }
        DispatchQueue.global().async {
            self.update()
        }
        sleep(1)
    }    
}
