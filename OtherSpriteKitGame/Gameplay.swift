//
//  Gameplay.swift
//  OtherSpriteKitGame
//
//  Created by Juan Morillo on 11/12/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import SpriteKit

class Gameplay: SKScene {
    override func didMove(to view: SKView) {
        print("Dentro del Gameplay")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            if touch == touches.first {
                print("Ir a la Scena Menu")
                OSGManager.shared.transition(self, toScene: .MainMenu, transition: SKTransition.moveIn(with: .right, duration: 0.5))
            }
        }
    }
}
