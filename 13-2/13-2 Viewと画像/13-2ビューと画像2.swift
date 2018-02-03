//
//  ViewController.swift
//  
//
//  Created by syuumasenokuchi on 2018-01-22
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // my Viewを作る
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        myView.backgroundColor = UIColor.red

        // イメージビューを作る
        let imageView UIImageView(frame:CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.image = UIImage(named: "flower")
        // 画像を縮小して全体を表示する
      
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
