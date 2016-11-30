//
//  ViewController.swift
//  CheckTest-1130
//
//  Created by ShinokiRyosei on 2016/11/26.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    let userDefaults: UserDefaults!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // unwrap userDefaults.string(forKey:) type String? to String
        // userDefaults.string(forKey:)をString? から Stringへアンラップ
        textField.text = userDefaults.string(forKey: "text")!
        textField.becomeFirstResponder()
    }
    
    @IBAction func selectSave(sender: UIButton) {
        
            // unwrap textField.text type String? to String
            // textField.textをString? から Stringへアンラップ
            userDefaults.set(textField.text!, forKey: "text")
    }
    
    // Close keyboard if return key is tapped.
    // Returキーでキーボードを閉じる
}

