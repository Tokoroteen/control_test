//
//  ViewController.swift
//  
//  
//  Created by Tokoroteen on 2023/02/10
//  
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var photoimageView: UIImageView!
    @IBOutlet var sampletextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func change(){
        //photoImageViewの画像を変更 / namedの中は各々異なるよ！
//        photoimageView.image = UIImage(named: "IMG_8019.JPG")
//        sampletextView.text = "わっしょい"
        
        let alert = UIAlertController(title: "注意", message: "雨が降るよ", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            self.sampletextView.text = "わっしょい"
            alert.dismiss(animated: true, completion: nil)
        }
        let cancelAction = UIAlertAction(title: "キャンセル", style: .default) { (action) in
            self.photoimageView.image = UIImage(named: "IMG_8019.JPG")
            alert.dismiss(animated: true, completion: nil)
        }
        
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }

}

