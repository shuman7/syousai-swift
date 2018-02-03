//
//  ViewController.swift
//  列挙型enum
//
//  Created by syuumasenokuchi on 2018/01/10.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit
//列挙型MensSizeの定義
enum MensSize {
    case S
    case M
    case L
    case XL
}
//列挙型WomenSizeの定義
enum WomensSize {
    case XS, S, M, L
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        hogehoge()
        foo()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func hogehoge(){
        var mySize = MensSize.M
        mySize = .S
        
        var herSize:WomensSize
        herSize = .XS
        
        print(mySize)
        print(herSize)
    }

    func foo(){
    print("a")
    }
    
}


