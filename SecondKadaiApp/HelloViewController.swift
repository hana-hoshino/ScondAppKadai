//
//  HelloViewController.swift
//  SecondKadaiApp
//
//  Created by hana on 2020/05/30.
//  Copyright © 2020 hana. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    var name:String = ""
    

        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
            
            // 上記では、nameを空欄で宣言していたが、
            // 1画面目のViewControllerから遷移するときにprepareForSegueで
            // nameの値を新たに代入されたので名前が入っている
            nameLabel.text = "\(name)"+" さん"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
