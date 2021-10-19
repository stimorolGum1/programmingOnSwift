//
//  ViewController.swift
//  task1
//
//  Created by Danil on 08.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var name = ""
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var field: UITextField!
    
    @IBAction func button(_ sender: Any) {
        label.text! = "\(field.text!) \(name)"
        name += "\(field.text!)\(" ")"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

