//
//  HelloViewController.swift
//  SecondKadaiApp
//
//  Created by hana on 2020/05/30.
//  Copyright © 2020 hana. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    //nameLabelを入れる
    @IBOutlet weak var nameLabel: UILabel!
    
    //nameの箱用意
    var name:String = ""

    //************************************************************************************

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
         //Labelのフォント設定は
         let stringAttributes1: [NSAttributedString.Key : Any] = [
             .font : UIFont.systemFont(ofSize: 34.0)
         ]
         //Labelに設定を代入！
         let string1 = NSAttributedString(string: "\(name)", attributes: stringAttributes1)

         //************************************************************************************
         //「さん」のフォント設定は
         let stringAttributes2: [NSAttributedString.Key : Any] = [
             .font : UIFont.systemFont(ofSize: 18.0)
         ]
         //「さん」に設定を代入！
         let string2 = NSAttributedString(string: "さん", attributes: stringAttributes2)
        
         //************************************************************************************
        
        // Labelと「さん」をまとめてnameLabelに代入する
        let mutableAttributedString = NSMutableAttributedString()
        mutableAttributedString.append(string1)
        mutableAttributedString.append(string2)
        nameLabel.attributedText = mutableAttributedString
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
