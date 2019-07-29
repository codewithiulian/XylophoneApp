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
    
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")!
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        }catch let error as NSError {
            print(error)
        }
        audioPlayer.play()
    }
    
  

}

