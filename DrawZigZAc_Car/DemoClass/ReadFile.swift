//
//  ReadFile.swift
//  DemoClass
//
//  Created by Dinhgiap on 9/9/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class ReadFile: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var path:NSString = NSBundle.mainBundle().pathForResource("taytien", ofType: "txt")
        var content:NSString = NSString.stringWithContentsOfFile(path, encoding: NSUTF8StringEncoding, error: nil)
        println(self.couter("những", content: content))
        
    }
    
    func couter(string:String,content:NSString)->Int{
        var array:NSArray = content.componentsSeparatedByString(" ")
        var count:Int = 0
        for value in array {
            if (value as String) == string{
                ++count
            }
            
        }
        return count
    }
    
}
