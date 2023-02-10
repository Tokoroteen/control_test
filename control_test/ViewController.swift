//
//  ViewController.swift
//  
//  
//  Created by Tokoroteen on 2023/02/10
//  
//

import UIKit

class ViewController: UIViewController {
    var number = 0
    @IBOutlet var countLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
        number = ud.integer(forKey: "count")
        countLabel.text = String(number)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus(){
        number += 1
        countLabel.text = String(number)
        
        //UserDefaultsを使いますよの合図
        let ud = UserDefaults.standard
        ud.set(number, forKey: "count")
    }
    

    
}

