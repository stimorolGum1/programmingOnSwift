//
//  ViewController.swift
//  Task3
//
//  Created by Danil on 10.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var field1: UITextField!
    
    @IBOutlet weak var field2: UITextField!
    
    @IBOutlet weak var field3: UITextField!
    
    @IBAction func button(_ sender: Any) {
        if  let x1 = Int(field1.text!), let x3 = Int(field3.text!) {
            switch (field2.text!) {
            case "-":
                label.text = String(x1-x3)
            case "+":
                label.text = String(x1+x3)
            case "*":
                label.text = String(x1*x3)
            case "/":
                if x3 == 0{
                    label.text = "Некорректные данные"
                }
                else {
                    label.text = String(Double(x1/x3))
                }
            default:
                label.text = "Некорректные данные"
                return
            }
        }
    }
}
