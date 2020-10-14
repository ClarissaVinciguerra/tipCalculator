//
//  CustomLabels.swift
//  TipCalculator
//
//  Created by Clarissa Vinciguerra on 10/12/20.
//

import UIKit

class CalculatorLabels: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
    func setUpViews() {
            self.addCornerRadius(radius: 10)
            self.layer.masksToBounds = true
            
            self.backgroundColor = .grayBlueAccent
            self.addAccentBorder(width: 1)
    }
    
}

class CommentAndBillLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
    func setUpViews() {
            self.addCornerRadius(radius: 10)
            self.layer.masksToBounds = true
            
            self.backgroundColor = .grayBlueAccent
    }
}
