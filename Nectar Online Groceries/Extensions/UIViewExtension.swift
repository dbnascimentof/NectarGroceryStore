//
//  File.swift
//  Nectar Online Groceries
//
//  Created by Daniel Filho on 30/04/24.
//

import UIKit

extension UIView {
    
    func setUiViewOverlay(color: UIColor, alpha: CGFloat) {
        let overlay = UIView()
        
        overlay.frame = bounds
        overlay.backgroundColor = color
        overlay.alpha = alpha
        addSubview(overlay)
    }
}
