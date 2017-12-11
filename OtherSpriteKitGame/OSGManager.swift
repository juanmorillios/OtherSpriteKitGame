//
//  OSGManager.swift
//  OtherSpriteKitGame
//
//  Created by Juan Morillo on 11/12/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import Foundation
import SpriteKit

enum SceneType: Int {
    case MainMenu = 0, Gameplay
}

class OSGManager {
    private init() {}
    static let shared = OSGManager()
    
    public func lunch() {
        firstLunch()
    }
    
    private func firstLunch() {
        if !UserDefaults.standard.bool(forKey: "isFirstLunch"){
            print("Primer lanzamiento")
            UserDefaults.standard.set(true, forKey: "isFirstLunch")
            UserDefaults.standard.synchronize()
        }
    }
    
    func transition(_ fromScene: SKScene, toScene: SceneType, transition: SKTransition? = nil) {
        guard let scene = getScene(toScene) else {return}
        if let transition = transition {
            scene.scaleMode = .resizeFill
            fromScene.view?.presentScene(scene, transition: transition)
        } else {
            scene.scaleMode = .resizeFill
            fromScene.view?.presentScene(scene)
        }
    }
    
    func getScene(_ sceneType: SceneType) -> SKScene? {
        switch sceneType {
        case SceneType.MainMenu:
            return MainMenu(size: CGSize(width: ScreenSize.width, height: ScreenSize.heigth))
        case SceneType.Gameplay:
            return Gameplay(size: CGSize(width: ScreenSize.width, height: ScreenSize.heigth))
        }
    }
}
