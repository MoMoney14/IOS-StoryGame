//
//  Story.swift
//  StoryGame
//
//  Created by Mahoto Sasaki on 6/5/20.
//  Copyright © 2020 mo3aru. All rights reserved.
//

import Foundation

struct Story {
    var title:String
    var choice1:String
    var choice2:String
    
    init(title:String, choice1:String, choice2:String){
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
    }
}
