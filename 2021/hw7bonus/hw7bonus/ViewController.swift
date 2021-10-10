//
//  ViewController.swift
//  hw7bonus
//
//  Created by Danil on 06.09.2021.
//

import UIKit

class ViewController: UIViewController {

    
    var name = ""
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var field: UITextField!
    
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        label.text = "\(field.text!) \(name)"
        name += "\(field.text!)\(" ")"
        field.text = ""
    }
    
    
}

/*
 Сделайте лейбл, поле ввода и кнопку:) по нажатию кнопки текст и текстфилда переносится в лейбл и отчищается, при вводе нового слова, оно появляется перед ранее введённым текстом с пробелом:)
 */
