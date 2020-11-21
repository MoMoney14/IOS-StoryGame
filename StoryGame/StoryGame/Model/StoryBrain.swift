//
//  StoryBrain.swift
//  StoryGame
//
//  Created by Mahoto Sasaki on 6/5/20.
//  Copyright © 2020 mo3aru. All rights reserved.
//

import Foundation

struct StoryBrain {
    let story = [
        Story(title: "a wizard has intruded upon your hobbit hole and he asks to go on an adventure with you", choice1: "stay in hobbit hole", choice2: "go with the shady wizard"),
        Story(title: "You are in your hobbit hole", choice1: "prepare tea", choice2: "Contemplate about your life"),
        Story(title: "The wizard wants to go on an adventure right now and orders you to get out of the house!", choice1: "Be disrespectful to the wizard", choice2: "Be repectful and follow his orders"),
        Story(title: "Some time has passed while you are preparing tea", choice1: "Drink tea", choice2: "Eat cookie"),
        Story(title: "You start contemplating about going on adventure", choice1: "Surely you must be kidding yourself, the hobbit hole is safe", choice2: "Stop contemplating and chase Gandalf!"),
        Story(title: "The wizard is greatly offended by your rude attitude", choice1: "Don't apologize, he deserved it for barging into your house so suddenly", choice2: "Apologize because you think you may have taken it too far"),
        Story(title: "While you were traveling you find a ring", choice1: "Don't take ring", choice2: "take ring")
    ]
    
    let ending = [
        "You sip tea while marveling at your life and how you could've almost gone on an adventure leaving you with a melancholoy feeling",
        "While you were eating a cookie, you forgot to turn the stove off and your house burns down... you sleep outside your hobbit hole wishing you had left to go adventure",
        "Yes, you're hobbit hole is safe and sound. Comforted by this idea you fell drowsy and decide to go to bed",
        "The Hobbit begins...",
        "Due to your disrespectful behavior, the shady wizard decides that you are not worth his time. Some time later, your party encounters a team of orcs and without the wizard's help, you are slain in battle. R.I.P. here lies ... ",
        "Well not that you have apologized your team dynamic improves. Unfortunately this doesn't follow the correct storyline so you and the wizard encounter a team of orcs and you are slain in battle. R.I.P. here lies ... ",
        "Unfortunately the timeline of you finding the ring does not match with the Hobbit so you die",
        "Unfortunately the timeline of you finding the ring does not match with the Hobbit so you die"
    ]
    var storyIndex = 0
    var endingIndex = 0
    
    func getStoryTitle() -> String {
        return story[storyIndex].title
    }
    
    func getStoryChoice1() -> String {
        return story[storyIndex].choice1
    }
    
    func getStoryChoice2() -> String {
        return story[storyIndex].choice2
    }
        
    mutating func nextStory(userChoice:String) -> Bool {
        if(userChoice == "End Story"){
            storyIndex = 0
        } else {
            if(userChoice == story[storyIndex].choice1){
                storyIndex = 2 * storyIndex +  1
            } else {
                storyIndex = 2 * storyIndex + 2
            }
        }
        if(storyIndex < story.count){
            return true
        } else {
            return false
        }
    }
    
    func endStory() -> String {
        return ending[storyIndex - 7]
    }
}
