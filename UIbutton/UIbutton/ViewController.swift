//
//  ViewController.swift
//  UIbutton
//
//  Created by syuumasenokuchi on 2018/01/14.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//ボタンで実行するメソッド
    @objc func ok(_ sender:UIButton) {
    print("OK")
    }
//    ボタンで実行するメソッド
    @objc func hello(_ sender:UIButton){
        print("ハロー")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        ボタンを作る
        let okButton = UIButton()
//        領域
        okButton.frame = CGRect(x: 100, y: 100, width: 200, height: 220)
//        背景画像
        let bkgImage = UIImage(named:"アメコミ")
        okButton.setBackgroundImage(bkgImage, for: .highlighted)
//        タイトル
        okButton.setTitle("OK", for: .normal)
        okButton.setTitleColor(UIColor.black, for: .normal)
        
//        ボタンで実行するメソッド
        okButton.addTarget(self, action: #selector(ViewController.ok(_:)), for: UIControlEvents.touchUpInside)
//         ビューに追加する
        view.addSubview(okButton)
        
//        カスタムタイプのボタンを作る
        let myButton = UIButton(type: .custom)
//        領域
        myButton.frame = CGRect(x: 50, y: 100, width: 120, height: 50)
//        ボタンの画像
        let image1 = UIImage(named: "アメコミ") //通常のイメージ
        let image2 = UIImage(named: "草") //ハイライト時のイメージ
        myButton.setImage(image1, for: .normal)
        myButton.setImage(image2, for: .highlighted)
//        タイトル
        myButton.setTitle("Hello", for: .normal)
        myButton.setTitleColor(UIColor.black, for: .normal)
//        ボタンで実行するメソッド
        myButton.addTarget(self, action: #selector(ViewController.hello(_:)), for: UIControlEvents.touchUpInside)
//        ビューに追加する
        self.view.addSubview(myButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

