//
//  Extensión.swift
//  OtherSpriteKitGame
//
//  Created by Juan Morillo on 10/12/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit
enum UIUserInterfaceIdiom: Int {
    case undefined
    case phone
    case pad
}

struct ScreenSize {
    static let width = UIScreen.main.bounds.size.width
    static let heigth = UIScreen.main.bounds.size.height
    static let maxHeigth = max(ScreenSize.width, ScreenSize.heigth)
    static let minHeigth = min(ScreenSize.width, ScreenSize.heigth)
}

struct DeviceType {
    static let isiPhone4OrLess = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxHeigth < 568.0
    static let isIphone5 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxHeigth >= 568.0
    static let isiPhone6 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxHeigth == 667.0
    static let isiPhone6Plus = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxHeigth == 736.0
    static let isiPhoneX = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxHeigth == 812.0
    static let isiPad = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.maxHeigth == 1024.0
    static let isiPadPro = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.maxHeigth == 1366.0
}
