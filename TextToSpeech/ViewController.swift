//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Kelly Galakatos on 8/24/18.
//  Copyright © 2018 Kelly Galakatos. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextView!
    var rateOfSpeech: Float = 0.5
    var volumeLevel: Float = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func clickClear(_ sender: Any) {
        textField.text = ""
    }
    
    @IBAction func clickAudible(_ sender: Any) {
        let utterance = AVSpeechUtterance(string: textField.text!)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        utterance.rate = rateOfSpeech
        utterance.volume = volumeLevel
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    
    @IBAction func rateOfSpeechSlider(_ sender: UISlider) {
        rateOfSpeech = sender.value
    }
    
    @IBAction func volumeLevelSlider(_ sender: UISlider) {
        volumeLevel = sender.value
    }
}

