//
//  ViewController.swift
//  hw7bonus2
//
//  Created by Danil on 09.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var field1: UITextField!
    
    @IBOutlet weak var field2: UITextField!
    
    @IBOutlet weak var field3: UITextField!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    enum operation: String {
        case addition = "+"
        case subtraction = "-"
        case divide = "/"
        case multiply = "*"
    }
    
    var oper: operation!
    
    @IBAction func button(_ sender: Any) {
        guard let x1 = Int(field1.text!), let x3 = Int(field3.text!) else { return }
            oper = ViewController.operation(rawValue: String(field2.text!))
            switch oper {
            case .subtraction:
                label.text = String(x1-x3)
            case .addition:
                label.text = String(x1+x3)
            case .multiply:
                label.text = String(x1*x3)
            case .divide where x3 == 0:
                    label.text = "Некорректные данные"
            case .divide:
                    label.text = String(Double(x1/x3))
            default:
                label.text = "Некорректные данные"
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
