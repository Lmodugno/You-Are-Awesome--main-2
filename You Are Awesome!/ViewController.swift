//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Gustudent on 9/6/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mesageLabel: UILabel!
    @IBOutlet weak var imageViewer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
     
    }

   
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        mesageLabel.text = "you are awesome!"
        imageViewer.image = UIImage(named: "image0")
        
    
    }
    
}

