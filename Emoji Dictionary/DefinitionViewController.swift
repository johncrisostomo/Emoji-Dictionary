//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by John Crisostomo on 08/04/2017.
//  Copyright © 2017 John Crisostomo. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    private var _emoji: String!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji: String {
        get {
            return _emoji
        } set {
            _emoji = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = _emoji
 
        switch _emoji {
        case "😀":
            definitionLabel.text = "Mundane smiley face."
        case "🤡":
            definitionLabel.text = "This is IT. Better be scared."
        case "🦊":
            definitionLabel.text = "Kitsune ja nai."
        case "🥊":
            definitionLabel.text = "Twins Special."
        case "🎧":
            definitionLabel.text = "Bose Headphones."
        case "🍟":
            definitionLabel.text = "Fries."
        default:
            definitionLabel.text = "You shouldn't be seeing this."
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
