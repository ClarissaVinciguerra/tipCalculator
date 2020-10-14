//
//  StyleGuide.swift
//  TipCalculator
//
//  Created by Clarissa Vinciguerra on 10/12/20.
//

import UIKit

extension UIColor {
    static let salmonAccent = UIColor(named: "salmon")!
    static let lightTanAccent = UIColor(named: "lightTan")!
    static let darkTanAccent = UIColor(named: "darkTan")!
    static let grayBlueAccent = UIColor(named: "grayBlue")!
    static let darkBlueAccent = UIColor(named: "darkBlue")!
}

extension UIView {
    func addCornerRadius(radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat, color: UIColor = .darkBlueAccent) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}


