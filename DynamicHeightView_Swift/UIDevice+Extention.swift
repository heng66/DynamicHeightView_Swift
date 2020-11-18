//
//  UIDevice+Extention.swift
//  DynamicHeightView_Swift
//
//  Created by heng on 2020/11/18.
//

import UIKit

public let SAFE_HEIGHT = UIDevice.current.isHair() ? CGFloat(88):CGFloat(64)

public extension UIDevice {
    
    func isHair() -> Bool {
        var hasHair:Bool = false
        if #available(iOS 11.0, *) {
            var keyWindow = UIApplication.shared.windows.first
            if  keyWindow == nil {
                keyWindow = UIApplication.shared.windows.first {$0.isKeyWindow}
            }
            hasHair = keyWindow?.safeAreaInsets.bottom ?? 0.0 > CGFloat(0.0)
        }
        return hasHair
    }
}
