//
//  K2ViewController.swift
//  anime
//
//  Created by yutaro on 2020/08/01.
//  Copyright © 2020 yutaro. All rights reserved.
//

import UIKit

class K2ViewController: UIViewController {

    @IBOutlet var titleTextFeild: UITextField!
    
    var resultHandler: ((String) -> Void)?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func backView(_ sender: Any) {

        guard let text = self.titleTextFeild.text else { return }

        // 用意したクロージャに関数がセットされているか確認する
        if let handler = self.resultHandler {
            // 入力値を引数として渡された処理の実行
            handler(text)
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    //テキストフィールドの編集を終わらせる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
          
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

