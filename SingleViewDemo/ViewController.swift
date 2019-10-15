//
//  ViewController.swift
//  SingleViewDemo
//
//  Created by Aleksandr Khudyntsev on 03/10/2019.
//  Copyright © 2019 Aleksandr Khudyntsev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter: Int = 0
    var resultDistance = 100;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressButton(_ sender: Any) {
        render(delta: 1)
    }
    
    func render(delta: Int){
        self.counter += delta
        let text: String = "Счетчик \(counter)"
        lblText.text = text
        
        resultDistance += (delta * 20)
        constraintResult.constant = CGFloat(resultDistance)
        let block = UIView(frame: CGRect(x: 50-25, y: 50/2-8, width: 16, height: 16))
        UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func pressDecrement(_ sender: Any) {
        render(delta: -1)
    }
    @IBOutlet weak var lblText: UILabel!
    
    @IBOutlet weak var constraintResult: NSLayoutConstraint!
    @IBOutlet weak var lblResult: UILabel!
}

