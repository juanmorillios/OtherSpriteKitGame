//
//  MainMenu.swift
//  OtherSpriteKitGame
//
//  Created by Juan Morillo on 10/12/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import SpriteKit

class MainMenu: SKScene {
    override func didMove(to view: SKView) {
        print("Dentro del Menu Principal")
        backgroundColor = UIColor(displayP3Red: 253/255, green: 148/255, blue: 254/255, alpha: 1)
        addPlayButton()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            if touch == touches.first {
                print("Vamos a la GamePlay")
                // OSGManager.shared.transition(self, toScene: .Gameplay)
                OSGManager.shared.transition(self, toScene: .Gameplay, transition: SKTransition.moveIn(with: .right, duration: 0.5))
                
            }
        }
    }
    
    func addPlayButton() {
        let playButton = SKSpriteNode(imageNamed: "PlayButton")
        playButton.position = CGPoint.zero
        playButton.zPosition = 1
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        addChild(playButton)
    }
}
