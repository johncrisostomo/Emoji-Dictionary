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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
