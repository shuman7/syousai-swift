//
//  ViewController.swift
//  13-3ビューの座標と領域
//
//  Created by syuumasenokuchi on 2018/01/23.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//車をアウトレット接続しておく
    @IBOutlet weak var myCar: UIImageView!
//    ホーム座標を決める
    let homePoint = CGPoint(x:100, y: 150)
    
//    ホームに戻る
    @IBAction func goHome(_ sender: Any) {
        myCar.center = homePoint
    }
//    右へ進む
    @IBAction func move(_ sender: Any) {
        myCar.center.x += 10
    }
//    開始時にホームに移動する
    override func viewDidLayoutSubviews() {
        myCar.center = homePoint
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

