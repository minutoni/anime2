//
//  K1ViewController.swift
//  anime
//
//  Created by yutaro on 2020/08/01.
//  Copyright © 2020 yutaro. All rights reserved.
//

import UIKit

class K1ViewController: UIViewController {
    
    @IBOutlet var titleTextFeild: UITextField!
    
    
    
    //Userefaults
    var savaData: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextFeild.text = savaData.object(forKey: "title") as? String
        
      

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveDate() {
     //UserDefultに書き込み
        
        savaData.set(titleTextFeild.text, forKey: "title")
    
    }
    
    @IBAction func byPerformSegue(_sender:Any){
            self.performSegue(withIdentifier: "toView", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
           // ②Segueの識別子確認
           if segue.identifier == "toView" {
    
               // ③遷移先ViewCntrollerの取得
               let nextView = segue.destination as! ViewController
    
               // ④値の設定
            nextView.K1String = titleTextFeild.text!
           }
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
