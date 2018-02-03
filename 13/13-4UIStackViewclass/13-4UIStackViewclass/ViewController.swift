//
//  ViewController.swift
//  13-4UIStackViewclass
//
//  Created by syuumasenokuchi on 2018/01/23.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        スタックビューに入れるviewを準備する
        let view1 = UIView()
        view1.backgroundColor = .lightGray
        let view2 = UIView()
        view1.backgroundColor = .gray
//        写真のイメージビュー
        let photo1 = UIImageView(image: UIImage(named: "画像名1"))
        let photo2 = UIImageView(image: UIImage(named: "画像名2"))
        let photo3 = UIImageView(image: UIImage(named: "画像名3"))
        photo1.contentMode = .scareAspectFill
        photo1.clipsToBounds = true
        photo2.contentMode = .scareAspectFill
        photo2.clipsToBounds = true
        photo3.contentMode = .scareAspectFill
        photo3.clipsToBounds = true
        
//        スタックビューを作る
        let rect = CGRect(x: 0, y: 0, width: 300, height: 600)
        let stackView = UIStackView(frame: rect)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
//        スタックビューに用意しておいたビューを追加する
        stackView.addArrangedSubview(view1)
        stackView.addArrangedSubview(view2)
        stackView.addArrangedSubview(photo1)
        stackView.addArrangedSubview(photo2)
        stackView.addArrangedSubview(photo3)
//        スタックビューを画面中央に表示する
        stackview.center = self.view.center
        self.view.addSubview(stackView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

