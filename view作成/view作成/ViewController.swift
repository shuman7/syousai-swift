//
//  ViewController.swift
//  view作成
//
//  Created by syuumasenokuchi on 2018/01/19.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        ラベルを作る
        let labelA = UILabel()
        labelA.text = "ラベルA"
//        ラベルの領域
        labelA.frame = CGRect(x: 80, y: 150, width: 110, height:21)
//        背景色と文字色
        labelA.backgroundColor = UIColor.orange
        labelA.textColor = UIColor.white
        
//        ルートビューに追加する
        self.view.addSubview(labelA)
        
//        ビューを
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

