//
//  ViewController.swift
//  TipCalculator
//
//  Created by Clarissa Vinciguerra on 10/12/20.
//

import UIKit

class ViewController: UIViewController {
 
    
    // MARK: - Outlets

    @IBOutlet weak var initialBillLabel: UILabel!
    @IBOutlet weak var initialBillTextField: UITextField!
    @IBOutlet weak var commentsTextField: UITextView!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var fifteenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!
    @IBOutlet weak var twentyFivePercentButton: UIButton!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var finalTotalLabel: UILabel!
    
    
    // MARK: - Properties
    var viewsLaidOut = false
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if viewsLaidOut == false {
            setUpViews()
            viewsLaidOut = true
        }
    }
    
    // MARK: - Actions
    @IBAction func fifteenPercentButtonTapped(_ sender: Any) {
        guard let checkTotal = initialBillTextField.text?.floatValue else { return }
        findTipAndTotal(checkAmount: checkTotal, percentage: 0.15)
    }
    
    @IBAction func twentyPercentButtonTapped(_ sender: Any) {
        guard let checkTotal = initialBillTextField.text?.floatValue else {return }
        findTipAndTotal(checkAmount: checkTotal, percentage: 0.20)
    }
    
    @IBAction func twentyFivePercentButtonTapped(_ sender: Any) {
        guard let checkTotal = initialBillTextField.text?.floatValue else { return }
        findTipAndTotal(checkAmount: checkTotal, percentage: 0.25)
    }
   
    func setUpViews() {
        self.view.backgroundColor = .lightTanAccent
        fifteenPercentButton.setTitleColor(.white, for: .normal)
        fifteenPercentButton.backgroundColor = .salmonAccent
        twentyPercentButton.setTitleColor(.white, for: .normal)
        twentyPercentButton.backgroundColor = .salmonAccent
        twentyFivePercentButton.setTitleColor(.white, for: .normal)
        twentyFivePercentButton.backgroundColor = .salmonAccent
        
        tipAmountLabel.textColor = .white
        tipAmountLabel.backgroundColor = .grayBlueAccent
        finalTotalLabel.textColor = .white
        finalTotalLabel.backgroundColor = .grayBlueAccent
        commentsLabel.textColor = .white
        commentsLabel.backgroundColor = .darkTanAccent
        finalTotalLabel.backgroundColor = .grayBlueAccent
        initialBillLabel.textColor = .white
        initialBillLabel.backgroundColor = .grayBlueAccent
        initialBillTextField.textColor = .white
        initialBillTextField.backgroundColor = .grayBlueAccent
        
        commentsTextField.backgroundColor = .darkTanAccent
        commentsTextField.textColor = .white
        
    }
    
    func findTipAndTotal(checkAmount: Float, percentage: Float) {
        let tip = checkAmount * percentage
        let number: NSNumber = NSNumber(value: tip)
        let roundedTip = round(Double(truncating: number) * 100)/100
        tipAmountLabel.text = "Tip: $\(roundedTip)"
        
        let finalTotal = checkAmount + Float(roundedTip)
        finalTotalLabel.text = "Final Total: $\(finalTotal)"
    }
    
}// End of class

extension String {
    var floatValue: Float {
        return (self as NSString).floatValue
    }
}


extension Double {
    /// Rounds the double to decimal places value
    func roundToPlaces(_ places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    func cutOffDecimalsAfter(_ places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self*divisor).rounded(.towardZero) / divisor
    }
}
