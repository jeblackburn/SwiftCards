//
//  ViewController.swift
//  SwiftCards
//
//  Created by Jon on 12/29/14.
//  Copyright (c) 2014 Jonathan Blackburn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var deck = PlayingCardDeck()
    
    @IBAction func cardFlipped(sender: UIButton) {
        if sender.currentTitle == nil {
            sender.setBackgroundImage(UIImage(named: "cardfront"), forState: UIControlState.Normal)
            let card = self.deck.randomCard
            sender.setTitle(card.value, forState: UIControlState.Normal)
            if card.textColor == "red" {
                sender.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            }
        } else {
            sender.setBackgroundImage(UIImage(named: "cardback"), forState: UIControlState.Normal)
            sender.setTitle(nil, forState: UIControlState.Normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

