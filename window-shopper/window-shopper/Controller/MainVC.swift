//
//  ViewController.swift
//  window-shopper
//
//  Created by Octavian on 28/12/2017.
//  Copyright © 2017 Octavian. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5304574429, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) //always use setTitle instead of .title!
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal) //for the normal state of the button, not the highlighted state
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }
    
    //it is going to use an objective C feature to run this
    @objc func calculate() {
        print("We got here")
    }
}

