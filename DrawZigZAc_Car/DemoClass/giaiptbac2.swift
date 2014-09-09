//
//  giaiptbac2.swift
//  DemoClass
//
//  Created by Dinhgiap on 9/9/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class giaiptbac2: UIViewController {

    @IBOutlet weak var hesoa: UITextField!
    @IBOutlet weak var hesob: UITextField!
    @IBOutlet weak var hesoc: UITextField!
    @IBOutlet weak var nghiem: UILabel!
    @IBAction func submit(sender: AnyObject) {
        var a:Int = hesoa.text.toInt()!
        var b:Int = hesob.text.toInt()!
        var c:Int = hesoc.text.toInt()!
        let delta = Float (b * b - 4 * a * c)
        var x1 = (Float(-b) + sqrt(delta))/(2.0 * Float (a))
        let x2 = (Float(-b) - sqrt(delta))/(2.0 * Float (a))
        let x = (Float (-b) / 2 * Float(a))
        if delta > 0 {
            nghiem.text = "x1 = \(x1)" + "\n" + "x2 = \(x2)"
        }
        if delta == 0 {
            nghiem.text = "phuong trinh co nghiem kep la" + "\n" + "x=\(x)"
        }
        if delta < 0 {
            nghiem.text = "phuong trinh vo nghiem"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
