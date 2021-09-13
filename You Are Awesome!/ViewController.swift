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
        mesageLabel.text = ""
    
     
    }

   
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let awesomeMessage = "you are awesome!"
        let greatMessage = "you are great!"
        let bombMessage = "you are da bomb!"
        
        if mesageLabel.text == awesomeMessage {
            mesageLabel.text = "you are great!"
            imageViewer.image = UIImage(named: "image1")
        } else if mesageLabel.text == greatMessage {
            mesageLabel.text = bombMessage
            imageViewer.image = UIImage(named: "image2")
        } else  {
            mesageLabel.text = awesomeMessage
            imageViewer.image = UIImage(named: "image0")
        
    
    }
    
}
}
