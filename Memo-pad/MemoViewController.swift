//
//  MemoViewController.swift
//  Memo-pad
//
//  Created by Yasunori Noguchi on 2017/05/31.
//  Copyright © 2017年 Yasunori Noguchi. All rights reserved.
//

import UIKit
import RealmSwift

class MemoViewController: UIViewController {
    @IBOutlet var contentTextView: UITextView!
    @IBOutlet var BarButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveMemo(){
        let alert = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .alert)
        
        // OKボタンの設定
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            (action:UIAlertAction!) -> Void in
            
            // OKを押した時入力されていたテキストを表示
            if let textFields = alert.textFields {
                
                // アラートに含まれるすべてのテキストフィールドを調べる
                for textField in textFields {
                    print(textField.text!)
                }
            }
        })
        alert.addAction(okAction)
        
        // キャンセルボタンの設定
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        
        // テキストフィールドを追加
        alert.addTextField(configurationHandler: {(textField: UITextField!) -> Void in
            textField.placeholder = "Title"
        })
        
        // アラートを画面に表示
        self.present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
