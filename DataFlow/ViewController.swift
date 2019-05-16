//
//  ViewController.swift
//  DataFlow
//
//  Created by Savitri Nurhayati on 16/05/19.
//  Copyright © 2019 Savitri Nurhayati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FullNameTextField: UITextField!
    @IBOutlet weak var PhoneTextField: UITextField!
    
    @IBAction func registerPressed(_ sender: Any) {
        if FullNameTextField.text == "" || PhoneTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "All text fileds must be filled", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { (alertAction) in
                alert.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        } else {
            performSegue(withIdentifier: "toConfirmPage", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            ConfirmViewController {
            destination.fullName = FullNameTextField.text
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        FullNameTextField.delegate = self
        PhoneTextField.delegate = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == FullNameTextField {
            PhoneTextField.becomeFirstResponder()
        } else if textField == PhoneTextField {
            textField.resignFirstResponder()
        }
        return true
    }
}
