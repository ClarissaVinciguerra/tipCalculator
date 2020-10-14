//
//  CustomButtons.swift
//  TipCalculator
//
//  Created by Clarissa Vinciguerra on 10/12/20.
//

import UIKit

class CalculatorTipButton: UIButton {
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        setUpViews()
    }
    
    // MARK: - Class Functions
    func setUpViews() {
        self.addCornerRadius(radius: 10)
        self.layer.masksToBounds = true
        self.backgroundColor = (.salmonAccent)
    }
}
