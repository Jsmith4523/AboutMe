//
//  ViewController.swift
//  AboutMe
//
//  Created by Jaylen Smith on 8/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        let foregroundColor = changeColors()
        
        self.nameLabel.textColor       = foregroundColor
        self.universityLabel.textColor = foregroundColor
        self.occupationLabel.textColor = foregroundColor
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let backgroundColor = self.changeColors()
        view.backgroundColor = backgroundColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func changeColors() -> UIColor {
        let red   = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue  = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
}

