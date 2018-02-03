//
//  ViewController.swift
//  有効無効
//
//  Created by syuumasenokuchi on 2018/01/11.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @objc func OK(_ sender:UIButton) {
        print("おけ")
        }
    let  OKButton = UIButton()
    
    OKButton.frame = CGRect(x: 100, y: 100, width: 120, height: 120)
    let bkgImage = UIimage(named: "maru")
    OKButton
    @IBOutlet weak var numLasbel: UILabel!
    @IBOutlet weak var okButton: UIButton!
    @IBAction func changeButton(_ sender: Any) {
        let num = arc4random_uniform(100)
        numLasbel.text = String(num)
        
        okButton.isEnabled = (num>=50)
        
    }
    
    @IBAction func tapOK(_ sender: Any) {
        print("OK")
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

