//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Gustudent on 9/6/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var mesageLabel: UILabel!
    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 6
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mesageLabel.text = ""
    }

    func playSound(name:String){
        if let sound = NSDataAsset(name: name){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("\(error.localizedDescription)ERROR")
            }
        } else {
            print("ERROR")
        }
    }
    
    func nonRepeatingRandom(originalNumber:Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }
    
   
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["you are awesome!", "you are great!", "you are fantastic!", "awesome? thats you!", "when the genius bar needs help they call you!", "you got the design skills of Kanye West!"]
      
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
       
        mesageLabel.text = messages[messageNumber]
        
       
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageViewer.image = UIImage(named:"image\(imageNumber)")
        
      
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        print("*** the new sound number is \(soundNumber)")
        
        if playSoundSwitch.isOn{
            playSound(name: "sound\(soundNumber)")
        }
    
}
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn && audioPlayer != nil {
            audioPlayer.stop()
        
                
            }
        }
        
    }
    
    

