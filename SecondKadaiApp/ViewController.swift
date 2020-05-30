//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by hana on 2020/05/30.
//  Copyright © 2020 hana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textbox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var textboxString = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のHelloViewControllerを取得する
        let helloViewController:HelloViewController = segue.destination as! HelloViewController
        
        // TextFieldから文字を取得
        textboxString = textbox.text!
        helloViewController.name = "\(textboxString)"
    }
    
    
    @IBAction func re(_ segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }


}

