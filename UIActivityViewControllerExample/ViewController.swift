//
//  ViewController.swift
//  UIActivityViewControllerExample
//
//  Created by Domo on 05/11/2019.
//  Copyright © 2019 Domo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shareTypeSwitch: UISwitch!
    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBAction func shareItButton(_ sender: Any) {
        
        var items = [Any]()
        
        if shareTypeSwitch.isOn {
            items = [profileImageView.image]
        } else {
            items = [messageTextView.text]
        }
        
        let ac = UIActivityViewController(activityItems: items, applicationActivities: nil)
        present(ac, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

