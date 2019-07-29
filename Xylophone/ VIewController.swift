//
//  ViewController.swift
//  Xylophone
//
//  Created by Iulian Oana on 29/07/2019.
//  Copyright © 2019 Iulian Oana. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    // Declare the audio player.
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // On Touch Up Inside Keys callback.
    @IBAction func notePressed(_ sender: UIButton) {
        // Play the sound by passing the tag.
        playSound(sender.tag)
    }
    
    // Plays the sound according to the note required.
    func playSound(_ tag : Int){
        // Define the url (concat 'note' with the tag passed).
        let url = Bundle.main.url(forResource: "note\(tag)", withExtension: "wav")!
        // Error hadling.
        do{
            // Get the wav sound file to the player.
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        }catch let error as NSError {
            // Print out the error.
            print(error)
        }
        // Play the sound.
        audioPlayer.play()
    }
  

}

