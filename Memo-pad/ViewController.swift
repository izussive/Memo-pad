//
//  ViewController.swift
//  Memo-pad
//
//  Created by Yasunori Noguchi on 2017/05/31.
//  Copyright © 2017年 Yasunori Noguchi. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var table:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    //ID付きのセルを取得して、セル付属のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = "テスト"
        return cell!
    }
    
    //セルがタップされた時に呼び出されるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toMemoViewController",sender: nil)
    }
    
    //segueを設定
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toMemoViewController") {
            let _: ViewController = (segue.destination as? ViewController)!
        }
    }
}

