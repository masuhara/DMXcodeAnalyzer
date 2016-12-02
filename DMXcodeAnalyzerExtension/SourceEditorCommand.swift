//
//  SourceEditorCommand.swift
//  DMXcodeAnalyzerExtension
//
//  Created by Masuhara on 2016/11/19.
//  Copyright © 2016年 net.masuhara. All rights reserved.
//

import Foundation
import Cocoa
import XcodeKit

class SourceEditorCommand: NSObject, XCSourceEditorCommand {
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        
        DispatchQueue.main.async {
            let bufferText = invocation.buffer
            print(bufferText)
            let alert = NSAlert()
            alert.messageText = "Configure Username"
            alert.informativeText = "Please write username. Username is only alphanumeric characters."
            alert.addButton(withTitle: "Configure")
            alert.addButton(withTitle: "Cancel")
            alert.alertStyle = .informational
            
            let textField = NSTextField(frame: NSMakeRect(0, 0, 240, 24))
            textField.placeholderString = "Username"
            alert.accessoryView = textField
            
            textField.becomeFirstResponder()
            
            let button = alert.runModal()
            if button == NSAlertFirstButtonReturn {
                print(textField.stringValue)
            } else {
                print("2")
            }
        }
        
        /*
        alert.beginSheetModal(for: self.view.window, completionHandler: { modalResponse in
            if modalResponse == NSAlertFirstButtonReturn {
                
            }
        })
         */
        
        completionHandler(nil)
    }
}
