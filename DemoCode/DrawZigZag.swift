//
//  DrawZigZag.swift
//  Day02
//
//  Created by techmaster on 8/19/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class DrawZigZag: UIViewController {

    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        println(self.Stringzigzac(5, column: 9))
        self.result.text = self.Stringzigzac(5, column: 9)
        println(self.drawCar())
    }

    func drawZigZag () {
        println("    *     ")
        println("   *  *   ")
        println("  *    *  ")
        println(" *      * ")
        println("*        *")
    }
    
    func stringZigZag () -> String {
        var result = ""
        result += "    *     \n"
        result += "   *  *   \n"
        result += "  *    *  \n"
        result += " *      * \n"
        result += "*        *\n"
        return result
    }
    func drawCar () -> String {
        var result = ""
        result += "          *******************\n"
        result += "          *                 *\n"
        result += "          *                 *\n"
        result += "***********                 *\n"
        result += "*         *                 *\n"
        result += "*    *    *        *        *\n"
        result += "* *  *  * ***** *     * *****\n"
        result += "     *             *         \n"
        return result
    }
    func Stringzigzac(row:Int,column:Int)->String{
        // dieu kien cua hang va cot
        if column % 2 == 0 && row != (column / 2) + 1 {
            println("nhap lai hang va cot")
            return ""
            
        }
        else{
        var string:[String] = Array(count: row * (column + 1), repeatedValue: "\t")
        for var i = 1; i <= row ; ++i {
            string[(i * (column + 1)) - 1] = "\n"
            var k = (column / 2) + ((i - 1) * column )
                string[k] = "*" + "\t"
            var f = (column / 2) + ((i - 1) * (column + 2))
                string[f] = "*"
                            }
            var kq = ""
            for var n = 0; n <=  (row * (column + 1)) - 1 ; ++n {
                kq += string[n]
                }
            return kq
            }
    
    }

}