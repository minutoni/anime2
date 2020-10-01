//
//  ViewController.swift
//  anime
//
//  Created by yutaro on 2020/07/04.
//  Copyright © 2020 yutaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    var number: Int = 0
    @IBOutlet var label: UILabel!
    var number2: Int = 0
    @IBOutlet var label2: UILabel!
     var number3: Int = 0
    @IBOutlet var label3: UILabel!
    var number4: Int = 0
      @IBOutlet var label4: UILabel!
    var number5: Int = 0
         @IBOutlet var label5: UILabel!
    var number6: Int = 0
         @IBOutlet var label6: UILabel!
    var number7: Int = 0
         @IBOutlet var label7: UILabel!
    var number8: Int = 0
         @IBOutlet var label8: UILabel!
    var number9: Int = 0
         @IBOutlet var label9: UILabel!
    
    @IBOutlet var titleLabel1: UILabel!
    
    @IBOutlet var titleLabel2: UILabel!
    
    @IBOutlet var titleLabel3: UILabel!
    
    @IBOutlet var titleLabel4: UILabel!
    
    let saveData1 = UserDefaults.standard
    let saveData2 = UserDefaults.standard
    let saveData3 = UserDefaults.standard
    let saveData4 = UserDefaults.standard

    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        saveData1.set(titleLabel1.text, forKey: "save1")
        titleLabel1.text = saveData1.object(forKey: "save1") as? String
        
        saveData2.set(titleLabel2.text, forKey: "save2")
        titleLabel2.text = saveData2.object(forKey: "save2") as? String
        
        saveData3.set(titleLabel3.text, forKey: "save3")
        titleLabel3.text = saveData3.object(forKey: "save3") as? String
        
        saveData4.set(titleLabel4.text, forKey: "save4")
        titleLabel4.text = saveData4.object(forKey: "save4") as? String
        
        
        
    }


    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
    }
    @IBAction func plus2() {
        number2 = number2 + 1
        label2.text = String(number2)
    }
    @IBAction func plus3() {
        number3 = number3 + 1
        label3.text = String(number3)
    }
    @IBAction func plus4() {
        number4 = number4 + 1
        label4.text = String(number3)
    }
    @IBAction func plus5() {
        number5 = number5 + 1
        label5.text = String(number5)
    }
    @IBAction func plus6() {
        number6 = number6 + 1
        label6.text = String(number6)
    }
    @IBAction func plus7() {
        number7 = number7 + 1
        label7.text = String(number7)
    }
    @IBAction func plus8() {
        number8 = number8 + 1
        label8.text = String(number8)
    }
    @IBAction func plus9() {
        number9 = number9 + 1
        label9.text = String(number9)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // segueのIDを確認して特定のsegueのときのみ動作させる
            if segue.identifier == "toView" {
                // 遷移先のViewControllerを取得
                let next = segue.destination as? K1ViewController
                // 遷移先のプロパティに処理ごと渡す
                next?.resultHandler = { text in
                    // 引数を使ってoutputLabelの値を更新する処理
                    self.titleLabel1.text = text
                }
            }
        
        if segue.identifier == "toView2" {
            // 遷移先のViewControllerを取得
            let next = segue.destination as? K2ViewController
            // 遷移先のプロパティに処理ごと渡す
            next?.resultHandler = { text in
                // 引数を使ってoutputLabelの値を更新する処理
                self.titleLabel2.text = text
            }
        }
        
        if segue.identifier == "toView3" {
            // 遷移先のViewControllerを取得
            let next = segue.destination as? K3ViewController
            // 遷移先のプロパティに処理ごと渡す
            next?.resultHandler = { text in
                // 引数を使ってoutputLabelの値を更新する処理
                self.titleLabel3.text = text
            }
        }
        
        if segue.identifier == "toView4" {
            // 遷移先のViewControllerを取得
            let next = segue.destination as? K4ViewController
            // 遷移先のプロパティに処理ごと渡す
            next?.resultHandler = { text in
                // 引数を使ってoutputLabelの値を更新する処理
                self.titleLabel4.text = text
            }
        }
    }
    
    @IBAction func segue1(_sender:Any){
            self.performSegue(withIdentifier: "toView", sender: nil)

    }
    
    @IBAction func segue2(_sender:Any){
            self.performSegue(withIdentifier: "toView2", sender: nil)
        
    }
    @IBAction func segue3(_sender:Any){
                self.performSegue(withIdentifier: "toView3", sender: nil)
            
    }
    @IBAction func segue4(_sender:Any){
                    self.performSegue(withIdentifier: "toView4", sender: nil)
    }


}
