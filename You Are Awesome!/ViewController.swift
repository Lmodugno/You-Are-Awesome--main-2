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

    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mesageLabel.text = ""
    
     
    }

   
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["you are awesome!", "you are great!", "you are fantastic!", "awesome? thats you!", "when the genius bar needs help they call you!", "you got the design skills of Kanye West!"]
      
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        }
        while messageNumber == newMessageNumber
        
        messageNumber = newMessageNumber
        mesageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat  {
            newImageNumber = Int.random(in:0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber=newImageNumber
        imageViewer.image = UIImage(named:"image\(imageNumber)")
    
}
}
