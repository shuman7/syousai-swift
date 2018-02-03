//
//  ViewController.swift
//  UIswitchクラス12-5
//
//  Created by syuumasenokuchi on 2018/01/15.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //ラベルのプロパティ宣言
    @IBOutlet weak var msgLabel: UILabel!
    //スイッチの切り替えで呼び出すメソッド
    @IBAction func showHide(_ sender: UISwitch) {
        //スイッチのオン/オフとラベルのisHiddenの値を逆にする
        msgLabel.isHidden = !sender.isOn
    }
    
    @IBOutlet weak var colorChip: UIView!
    @IBAction func changedColor(_ sender: UISegmentedControl) {
//        選ばれているインデックス番号で処理を振り分ける
        switch sender.selectedSegmentIndex {
        case 0:
            colorChip.backgroundColor = UIColor.blue
        case 1:
            colorChip.backgroundColor = UIColor.yellow
        case 2:
            colorChip.backgroundColor = UIColor.green
        default :
            colorChip.backgroundColor = UIColor.blue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

