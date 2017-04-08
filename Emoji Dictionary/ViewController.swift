//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by John Crisostomo on 07/04/2017.
//  Copyright © 2017 John Crisostomo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis :[Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley Category"
        emoji1.definition = "Mundane smiley face."
        emojis.append(emoji1)
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤡"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley Category"
        emoji2.definition = "This is IT. Better be scared."
        emojis.append(emoji2)
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🦊"
        emoji3.birthYear = 2010
        emoji3.category = "Animal Category"
        emoji3.definition = "Kitsune ja nai."
        emojis.append(emoji3)
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🥊"
        emoji4.birthYear = 2010
        emoji4.category = "Things Category"
        emoji4.definition = "Twins Special."
        emojis.append(emoji4)
        
        let emoji5 = Emoji()
        emoji5.stringEmoji =  "🎧"
        emoji5.birthYear = 2010
        emoji5.category = "Things Category"
        emoji5.definition = "Bose Headphones."
        emojis.append(emoji5)
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🍟"
        emoji6.birthYear = 2010
        emoji6.category = "Food Category"
        emoji6.definition = "Fries."
        emojis.append(emoji6)
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

