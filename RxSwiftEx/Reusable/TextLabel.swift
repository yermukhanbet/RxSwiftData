//
//  TextLabel.swift
//  RxSwiftEx
//
//  Created by Yessen Yermukhanbet on 8/16/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//

import Foundation
import UIKit
class TextLabel: UILabel{
    init(text: String,
         textColo: UIColor,
         font: UIFont,
         frame: CGRect = .zero){
        super.init(frame: frame)
        self.setupViews(text: text, textColor: textColo, font: font)
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    private func setupViews(text: String, textColor: UIColor, font: UIFont){
        translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.textColor = textColor
        self.font = font
        self.numberOfLines = 0
        self.textAlignment = .center
    }
}
