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