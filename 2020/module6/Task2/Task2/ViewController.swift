//
//  ViewController.swift
//  Task2
//
//  Created by Danil on 06.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    func power(){
        if Int(field.text!)! >= 550 {
            label.text! = "введите степень меньше" }
            else {
                if let num = Int(field.text!) {
                    let mult = (pow(2, num))
                    label.text! = "\(mult)" }
                    else {
                        label.text! = "Введите целое число" }
            }
    }
        
        @IBOutlet weak var label: UILabel!
        
        @IBOutlet weak var field: UITextField!
    
        @IBAction func button(_ sender: Any) {
            power()
        }
}


