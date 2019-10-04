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
    @IBOutlet weak var submittedGuess: UITextField!
    // MARK: Properties
    let targetNumber = Int.random(in: 1...100)
    
    
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
   // will be used to check a guess
    @IBAction func checkGuess(_ sender: Any) {
        // Obtain the guessed value from the text field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        //For testing purposes, what was the guess?
        print ("For testing purposes, the guess made was  \(guessNumber)")

        // give the approprite feedback to the user
        if guessNumber > targetNumber {
            print("Guess lower next time")
        }else if guessNumber < targetNumber {
            print("Guess higher next time")
        }else {
            print("You are correct")
        }
}
}
