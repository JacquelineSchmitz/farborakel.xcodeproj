//
//  ViewController.swift
//  farborakel.xcodeproj
//
//  Created by Jacqueline Schmitz on 18.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var buttonBackground: UIButton!
   
    @IBOutlet weak var circle: UIView!
    
    @IBOutlet weak var buttonCircle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        circle.layer.cornerRadius = 100
    }
    @IBAction func changeBackground(_ sender: Any) {
        self.view.backgroundColor = randomcolor()
    }
    @IBAction func changeCirclecolor(_ sender: Any) {
        circle.backgroundColor = randomcolor()
    }
    func randomcolor() -> UIColor{
            let red: CGFloat = CGFloat(drand48())
            let green: CGFloat = CGFloat(drand48())
            let blue: CGFloat = CGFloat(drand48())
            return UIColor(red:red, green:green, blue:blue, alpha: 1.0)
        }

}

