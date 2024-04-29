//
//  NOGTextField.swift
//  Nectar Online Groceries
//
//  Created by Daniel Filho on 29/04/24.
//

import UIKit

class NOGTextField: UITextField {

    var style: String!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(placeholder: String, style: String){
        super.init(frame: .zero)
        
        if style == "Search" {
            configureSearchTextField(placeholder: placeholder)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSearchTextField(placeholder: String){
        translatesAutoresizingMaskIntoConstraints = false
        
        let imageView = UIImageView()
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold, scale: .large)
        
        imageView.image = UIImage(systemName: "magnifyingglass", withConfiguration: largeConfig)
        imageView.tintColor = UIColor.black
    
        
        self.leftViewMode       = .always
        self.leftView           = imageView
        self.placeholder        = placeholder
        layer.cornerRadius      = 15
        layer.borderWidth       = 1
        layer.backgroundColor   = UIColor.systemGray6.cgColor
        layer.borderColor       = UIColor.systemGray.cgColor
        tintColor               = UIColor.black
        font                    = UIFont.preferredFont(forTextStyle: .headline)
        keyboardType            = .default
        returnKeyType           = .search
    }
}
