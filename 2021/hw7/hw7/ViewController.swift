//
//  ViewController.swift
//  hw7
//
//  Created by Danil on 04.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var a = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    func labelChangeNum() {
        label.text = "Нажатий: \(a)"
        a += 1
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: Any) {
        labelChangeNum()
    }
    
}

/*
 Что нужно сделать
 Создайте простое приложение — счётчик нажатий на кнопку. Приложение состоит из одного экрана. На нём отображаются два элемента: кнопка и лейбл. Для выполнения задания создайте новый проект с типом App.

  

 Начальное состояние элементов:

 Лейбл с текстом — «Нажатий: 0».
 Кнопка с текстом — «Нажать».
  

 При нажатии на кнопку:

 Лейбл меняет текст — «Нажатий: 1». При каждом нажатии их количество увеличивается на один.
 Текст кнопки не меняется.
  

 Внешний вид:

 Лейбл находится над кнопкой. done
 Текст лейбла и кнопки выровнен посередине. done
 Использованы стандартные для элементов шрифты.done
 Отступы между элементами и границами экранов — 16pt
 Цвет кнопки — кастомный, с HEX-значением #9bfaf8. done


 Советы и рекомендации
 Созданные элементы свяжите в файле ViewController.swift, там же должен располагаться код, отвечающий за логику обновления UI и счётчика кнопки. Все переменные и функции создавайте внутри тела класса ViewController.
 */
