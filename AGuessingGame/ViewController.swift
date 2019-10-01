//
//  ViewController.swift
//  AGuessingGame
//
//  Created by William Chan on 2019-09-30.
//  Copyright © 2019 WilliamChan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    // MARK: Properties
    
    
    
    // MARK: Initializers
    
    
    
    // MARK: Methods (functions) - behaviours
    
    // Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

// make a object named 'synthsizer', which is an instance of a class 'AVSpeech Synthesizer'
let synthesizer = AVSpeechSynthesizer()
        
        // make a string that contains what we want the computer to say
        let message = "I'm thinking of a number between 1 and 100. Guess what it is."
        
        // make an object 'utterance', which is an instance of the class AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        //speak the message
        synthesizer.speak(utterance)

}
