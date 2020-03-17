//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by SEIJI TANAKA on 2020/03/17.
//  Copyright © 2020 SEIJI TANAKA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.text = "0"
    }

    @IBAction func plus(_ sender: Any) {
        count = count + 1
        countLabel.text = String(count)
        if count >= 10 {
            chnageTextColor()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        count = count - 1
        countLabel.text = String(count)
        if count < 1 {
            resetTxetColor()
        }
    }
    
    func chnageTextColor() {
        countLabel.textColor = .yellow
    }
    
    func resetTxetColor() {
        countLabel.textColor = .white
    }
}

