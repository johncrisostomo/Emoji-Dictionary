//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by John Crisostomo on 08/04/2017.
//  Copyright © 2017 John Crisostomo. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    private var _emoji: Emoji!
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    var emoji: Emoji {
        get {
            return _emoji
        } set {
            _emoji = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = _emoji.stringEmoji
        definitionLabel.text = _emoji.definition
        categoryLabel.text = _emoji.category
        birthYearLabel.text = "Birth Year: \(_emoji.birthYear)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
