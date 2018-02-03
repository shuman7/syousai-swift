//
//  ViewController.swift
//  13-2 Viewと画像
//
//  Created by syuumasenokuchi on 2018/01/21.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        画像の背景色をグレーにする
        self.view.backgroundColor = UIColor.lightGray
        
//        イメージビューを作る
        let rect = CGRect(x: 0, y: 0, width: 300, height: 300)
        let imageView = UIImageView(frame: rect)
        
//        イメージの表示モード
        imageView.contentMode = .scaleAspectFit
//        イメージビューにイメージを設定する
        imageView.image = UIImage(named: "アメコミ.jpeg")
//イメージビューの座標をルートビューの中央に設定する
        imageView.center = self.view.center
//        イメージビューをルートビューに追加（表示）する
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

