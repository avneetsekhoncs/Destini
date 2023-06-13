//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let story0 : String = "You see a fork in the road."
    let choice1 : String = "Take a left."
    let choice2 : String = "Take a right."
    var nextStory : Int = 0
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton)
    {
        
        let userChoice = sender.currentTitle!
        nextStory = storyBrain.nextStory(userChoice)
        updateUI()
    }
    
    func updateUI()
    {
        storyLabel.text = storyBrain.stories[nextStory].title
        choice1Button.setTitle(storyBrain.stories[nextStory].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[nextStory].choice2, for: .normal)
    }
}

