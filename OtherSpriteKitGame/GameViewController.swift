//
//  GameViewController.swift
//  OtherSpriteKitGame
//
//  Created by Juan Morillo on 10/12/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit
import SpriteKit
class GameViewController: UIViewController {
    
    let skView: SKView = {
        let view = SKView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(skView)
        
        skView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        skView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        skView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        skView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        if DeviceType.isiPhoneX {
            print("iPhoneX")
        }else {
            print("Otro")
        }
    }
    
}

