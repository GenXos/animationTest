//
//  ViewController.swift
//  animationTest
//
//  Created by Todd Fields on 2017-02-22.
//  Copyright © 2017 SKULLGATE Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var hockeyButton: UIButton!
    @IBOutlet weak var footballButton: UIButton!
    @IBOutlet weak var basketballButton: UIButton!
    @IBOutlet weak var trophyButton: UIButton!
    
    var hCenter: CGPoint!
    var fCenter: CGPoint!
    var bCenter: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hCenter = hockeyButton.center
        fCenter = footballButton.center
        bCenter = basketballButton.center
        
    }


    override func viewDidLayoutSubviews() {

        hockeyButton.center = trophyButton.center
        footballButton.center = trophyButton.center
        basketballButton.center = trophyButton.center
        hockeyButton.alpha = 0
        footballButton.alpha = 0
        basketballButton.alpha = 0
    }
    

    @IBAction func trophyButtonPressed(_ sender: Any) {
        
        UIView.animate(withDuration: 0.5) {
            self.hockeyButton.center = self.hCenter
            self.hockeyButton.alpha = 1
            self.footballButton.center = self.fCenter
            self.footballButton.alpha = 1
            self.basketballButton.center = self.bCenter
            self.basketballButton.alpha = 1
        }
    }

}

