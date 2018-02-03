//
//  ViewController.swift
//  13-5
//
//  Created by syuumasenokuchi on 2018/01/25.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit
//テーブルビューに表示するデータ
    let sectionTitle = ["チョウ目","バッタ目","コウチュウ目"]
    let section0 = [("キタテハ","タテハチョウ科"),("クロアゲハ","アゲハチョウ科")]
    let section1 = [("キリギリス","キリギリス科"),("ヒナバッタ","バッタ科"),("マツムシ","マツムシ科")]
    let section2 = [("ハンミョウ","ハンミョウ科"),("アオオサムシ","アオオサムシ科"),("チビクワガタ","クワガタ科ムシ")]
    let tableDate = [section0, section1, section2]


class ViewController: UIViewController, UITabelViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        テーブルビューを作る
        let myTableView:UITableView!
//        テーブルビューのdelegateを設定する
        myTableView.delegate = self
//        テーブルビューのデータソースを設定する
        myTableView.dataSource = self
//        テーブルビューを表示する
        view.addSubview(myTableView)
        
    }

//* UITableViewDateSourceプロトコル*/
//    セクションの個数を決める
    func numberOfsection(in tableView: UITableView) -> Int {
        return sectionTitle.count /*sectionTitleは複数のタイトルが入っている配列*/
        
    }
//    セクションの行数を決める
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionData = tableDate[section]
        return sectionData.count /*sectionDateは複数のタプルが入っている配列*/
    }
    
    
//  セクションのタイトルを決める
    func tableView(_tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }
    
//    セルを作る
    func tableview(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: . subtitle, reuseIdentifier: "cell")
        let sectionData = tableData[(IndexPath as NSIndexPath).section]
        let cellData = sectionData [(IndexPath as NSIndexPath).row]
        cell.textLabel?.text = cellData.0
        cell.detailtextLabel?.text = cellData.1 /*セルに表示する虫の名前と科目を設定する*/
        return cell
    }
    
//UiTableViewDelegateデリゲートメソッド
//行がタップされると実行される
    func tableView(_ tableView: UITableView, didselectRowat indexPath: IndexPath) {
        let title = sectionTitle[indexPath.section]
        let sectionData = tableData[indexPath.section]
        let cellData = sectionData[indexPath.row]
        print("\(title)\(cellData.1)")
        print("\(cellData.0)")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

