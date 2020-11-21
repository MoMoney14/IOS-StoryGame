//
//  ViewController.swift
//  StoryGame
//
//  Created by Mahoto Sasaki on 6/5/20.
//  Copyright © 2020 mo3aru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func chosePath(_ sender: UIButton) {
        let userChoice = (sender.titleLabel!.text)!
        let storyOngoing = storyBrain.nextStory(userChoice: userChoice)
        if storyOngoing {
            updateUI()
        } else {
            storyLabel.text = storyBrain.endStory()
            choiceOne.setTitle("End Story", for: .normal)
            choiceTwo.setTitle("End Story", for: .normal)
        }
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choiceOne.setTitle(storyBrain.getStoryChoice1(), for: .normal)
        choiceTwo.setTitle(storyBrain.getStoryChoice2(), for: .normal)
    }
}

