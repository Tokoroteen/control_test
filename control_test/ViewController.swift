//
//  ViewController.swift
//  
//  
//  Created by Tokoroteen on 2023/02/10
//  
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var inputTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = "ジャジャーン"
        inputTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if answerLabel.text == inputTextField.text{
            let alert = UIAlertController(title: "正解", message: "すごいね", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default){(action) in
                self.dismiss(animated: false,completion: nil)
                textField.resignFirstResponder()
            }
            alert.addAction(okAction)
            self.present(alert, animated: false, completion: nil)
        }
        
        return true
    }

}

