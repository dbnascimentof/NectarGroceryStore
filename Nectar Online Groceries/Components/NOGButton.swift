//
//  NOGButton.swift
//  Nectar Online Groceries
//
//  Created by Daniel Filho on 29/04/24.
//

import UIKit

class NOGButton: UIButton {

    var style: String!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(title: String, style: String) {
        super.init(frame: .zero)
        self.style = style
        
        if style == "Primary" {
            configurePrimaryButton(title: title)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configurePrimaryButton(title: String) {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 19
        layer.backgroundColor = UIColor.systemGreen.cgColor
        
        self.setTitle(title, for: .normal)
        titleLabel?.textColor = UIColor.white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
    }
}
