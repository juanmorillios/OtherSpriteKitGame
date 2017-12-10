//
//  OSGManager.swift
//  OtherSpriteKitGame
//
//  Created by Juan Morillo on 11/12/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import Foundation

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
}
