//
//  ToViewController.swift
//  14-1
//
//  Created by syuumasenokuchi on 2018/01/28.
//  Copyright © 2018 syuu. All rights reserved.
//

import UIKit

class ToViewController: UIViewController {

    @IBAction func gotoTree(_ sender: Any) {
    
    //        移動先のビューコントローラーを参照する
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "treePage")
//        トランジションの映像効果を指定する
        nextVC?.modalTransitionStyle = .flipHorizontal
//        シーンを移動する
        present(nextVC!, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


