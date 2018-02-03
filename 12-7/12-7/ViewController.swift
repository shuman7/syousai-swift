//
//  ViewController.swift
//  12-7
//
//  Created by syuumasenokuchi on 2018/01/15.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flower: UIImageView!
//    スライダの変化で呼び出すメソッド
    @IBAction func changedSlider(_ sender: UISlider) {
//        アルファ値をスライダの値で設定する
        flower.alpha = CGFloat(sender.value)
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

