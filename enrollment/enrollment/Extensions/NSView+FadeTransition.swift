//
//  NSView+FadeTransition.swift
//  enrollment
//
//  Created by Jay on 7/25/18.
//  Copyright © 2018 IBM. All rights reserved.
//  SPDX-License-Identifier: GPL-3.0-only
//

import AppKit

extension NSView {
    
    /**
     Extension method for NSView to fade out over a configurable period of time
     
     - Parameter duration : CFTimeInterval (double value in seconds)
    */
    func fadeTransition(_ duration: CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        animation.type = CATransitionType.fade
        animation.duration = duration
        layer?.add(animation, forKey: convertFromCATransitionType(CATransitionType.fade))
    }
}

// Helper function inserted by Swift 4.2 migrator.
private func convertFromCATransitionType(_ input: CATransitionType) -> String {
	return input.rawValue
}
