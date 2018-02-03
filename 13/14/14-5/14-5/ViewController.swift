//
//  ViewController.swift
//  14-5
//
//  Created by syuumasenokuchi on 2018/01/30.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

//    webKitビュートアウトレット接続する
    @IBOutlet weak var webView: WKWebView!
//    シーン移動の際に設定されるWebデータ
    var data:(name:String, url:String)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//    データが設定されていればwebDataに代入する
        guard let WebData = data else {
            return
        }
//        表示するWebページのURLRewuestを作る
        let myURL = URL(string: webData.url)
        let meRequest = URLRequest(url: myURL:)
//        Webを読み込む
        webVew.load(myRequest)//Webページが表示される
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

