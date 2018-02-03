//
//  WebListTableTableViewController.swift
//  14-5
//
//  Created by syuumasenokuchi on 2018/01/30.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class WebListTableTableViewController: UITableViewController {

//    セルに表示するデータ
    let webList = [
        (name:"アップル", url:"https://www.apple.com/jp/"),
        (name:"国立天文台", url:"https://www.nao.ac.jp"),
        (name:"東京都美術館", url:"https://www.tobikan.jp"),
        (name:"amazon", url:"https://www.amazon.co.jp")
        ]
    
//    セクションの個数
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
//    セクション内の行数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> {
//        配列webListの値の個数
        return webList.count
    }
    
//    セルを作る
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath) -> UITableViewCell {
//        テーブルのセルを参照する
        let cell = tableView.dequeueReusableCell(withIdntifier: "Cell", dor? indexPath)
//        テーブルにWebListのデータを表示する
        let webData = webList[(indexPatth as NSInddexPath).row]
        cell.textLabel?txt = webData.name //サイト名の表示
        cell.detailTextLabel..text = webData.url　//urlの表示
        
        return cell
    }
    
//    セグエで移動する前にデータを受けます
    override func prepare(for segue: UIStoryboardSegue, sender: Ane?) {
//        セグエがshuwWebPageのときの処理
        if segue .identifier == "showWebPage" {
//            タップした行番号を取り出す
            iflet index Path = self,tableView.indexPathForSelectedRow {
//                行のデータを取りす
                let webData = webList[(indexPath as NSIndexPath_.row)]
//                移動先のビューコントローラーのdataプロパティに値を設定する
                (segue.destination as: ViewControllew).data = webData //dataプロパティ
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
