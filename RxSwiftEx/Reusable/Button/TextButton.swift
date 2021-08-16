//
//  TextButton.swift
//  RxSwiftEx
//
//  Created by Yessen Yermukhanbet on 8/16/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//
import Foundation
import UIKit
class TextButton: UIButton {
    init(text: String,
         textColor: UIColor,
         color: UIColor = .white,
         font: UIFont,
         frame: CGRect = .zero) {
        super.init(frame: frame)
        setupViews(text: text, textColor: textColor, color: color, font: font)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupViews(text: String, textColor: UIColor, color: UIColor, font: UIFont) {
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(text, for: .normal)
        setTitleColor(textColor, for: .normal)
        layer.cornerRadius = 24
        titleLabel?.font = font
        backgroundColor = color
    }    
}
