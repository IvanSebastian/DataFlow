//
//  ConfirmViewController.swift
//  DataFlow
//
//  Created by Savitri Nurhayati on 16/05/19.
//  Copyright © 2019 Savitri Nurhayati. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var fullName: String!
    override func viewDidLoad() {
        super.viewDidLoad()

    nameLabel.text = fullName
        // Do any additional setup after loading the view.
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
