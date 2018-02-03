//
//  ViewController.swift
//  13-7kyeboard
//
//  Created by syuumasenokuchi on 2018/01/27.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//スクロールビュー
    @IBOutlet weak var myScrollView: UIScrollView!
//    スクロールビューのサブビュー
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
//        スクロールビューの領域を指定する
        let scrollFrame = CGRect(x: 0, y: 20, width: view.frame.width, height: view.frame.height-20)
//        コンテンツのサイズを指定する
        let contentRect = contentView.bounds
        myScrollView.contentSize = CGSize(width:contentRect.width, height:contentRect.height)
    }


}

