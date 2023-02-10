//
//  ViewController.swift
//  
//  
//  Created by Tokoroteen on 2023/02/10
//  
//

import UIKit

class ViewController: UIViewController {
    var number: Int = 1
    @IBOutlet var countLabel : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(){
        number = number + 1
        countLabel.text = String(number)
        
//        if number==10 {
//            countLabel.textColor = UIColor.red
//        }else if number > 20 && number < 30 {
//            countLabel.textColor = UIColor.blue
//        }else if number >= 30 {
//            countLabel.textColor = UIColor.green
//        }else{
//            countLabel.textColor = UIColor.black
//        }
        
        switch number {
        case 10:
            countLabel.textColor = UIColor.red
        case 20:
            countLabel.textColor = UIColor.blue
        default:
            break
        }
    }
    
    @IBAction func fooooo(){
        print("buttom is pushed")
//        for i in 0..<5 {
//            print(i)
//        }
        while number<5 {
            number=number*2
            print(number)
        }
    }
}

