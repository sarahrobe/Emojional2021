//
//  ViewController.swift
//  Emojional2021
//
//  Created by Sarah Roberts on 5/23/21.
//  Copyright © 2021 Sarah Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["😁": "excited", "🥰": "in love", "😭": "sad"]
    
    let messages = ["excited" : ["ygg", "keep smiling", "have a great day"], "in love" : ["who is the lucky person?", "love yourself too", "awww"], "sad" : ["tomorrow is a new day", "need a tissue?", "let it out"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        //message shows up when user clicks their feeling emoji
        let selectedEmotion = (sender.titleLabel?.text)!
        
        let options = messages[emojis[selectedEmotion]!]!
        
        let emojiMessage = options[Int.random(in: 0..<3)]
        
        
        let alertController = UIAlertController(title: "You are feeling \(emojis[selectedEmotion]!)", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
       
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        }
        
        
    }



