//
//  ViewController.swift
//  AnimationMoveApp
//
//  Created by Parth Maru on 2023-03-19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myTextField: UITextField!
    @IBOutlet var myImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 3.4, delay: 2.3, options:
                        [.repeat, .autoreverse], animations:{
                self.myLabel.center.x += self.view.bounds.width
                self.myTextField.center.x += self.view.bounds.width
                self.myImageView.center.x += self.view.bounds.width
            }, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        myLabel.center.x += view.bounds.width
        myTextField.center.x += view.bounds.width
        myImageView.center.x += view.bounds.width
    }


}

