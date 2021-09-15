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

    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mesageLabel.text = ""
    
     
    }

   
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["you are awesome!", "you are great!", "you are fantastic!", "awesome? thats you!", "when the genius bar needs help they call you!", "you got the design skills of Kanye West!"]
      
        mesageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageViewer.image = UIImage(named: "image\(Int.random(in:0...totalNumberOfImages))")
        
//        mesageLabel.text = messages[messageNumber]
//        messageNumber += 1
//        if messageNumber == messages.count {
//            messageNumber = 0
//
//        }
        
        
//        let imageName = "image\(imageNumber)"
//        imageViewer.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10 {
//            imageNumber = 0
//        }
        
        
//        let awesomeMessage = "you are awesome!"
//        let greatMessage = "you are great!"
//        let bombMessage = "you are da bomb!"
//
//        if mesageLabel.text == awesomeMessage {
//            mesageLabel.text = "you are great!"
//            imageViewer.image = UIImage(named: "image1")
//        } else if mesageLabel.text == greatMessage {
//            mesageLabel.text = bombMessage
//            imageViewer.image = UIImage(named: "image2")
//        } else  {
//            mesageLabel.text = awesomeMessage
//            imageViewer.image = UIImage(named: "image0")
//
//
//    }
    
}
}
