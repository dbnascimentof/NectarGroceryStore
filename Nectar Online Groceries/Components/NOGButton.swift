//
//  NOGButton.swift
//  Nectar Online Groceries
//
//  Created by Daniel Filho on 29/04/24.
//

import UIKit

class NOGButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(title: String, style: String) {
        super.init(frame: .zero)
        
        if style == "Primary" {
            configurePrimaryButton(title: title)
        } else if style == "Secondary" {
            configureSecondaryButton(title: title)
        } else {
            configureTertiaryButton(title: title)
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
    
    
    private func configureSecondaryButton(title: String) {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius      = 19
        layer.backgroundColor   = UIColor.systemGray6.cgColor
        tintColor               = UIColor.systemGreen
        
        setTitleColor(.systemGreen, for: .normal)
        //setImage(icon, for: .normal)
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
    }
    
    
    private func configureTertiaryButton(title: String) {
        translatesAutoresizingMaskIntoConstraints = false
        
        setTitle(title, for: .normal)
        setTitleColor(UIColor.black, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
    }
}
