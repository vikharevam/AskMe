//
//  ViewController.swift
//  AskMe
//
//  Created by Александр Вихарев on 19.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var magicBallView: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    let arrayAnswerBall = [#imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball4") , #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball5")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        titleLabel.textColor = .black
        
        magicBallView.image = #imageLiteral(resourceName: "Ball0")
        
        button.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        
        
        
    }

    @IBAction func buttonPushBall(_ sender: UIButton) {
        
        magicBallView.image = arrayAnswerBall.randomElement()
        button.tintColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
    }
    
    @IBAction func resetButtonPush(_ sender: UIButton) {
        magicBallView.image = #imageLiteral(resourceName: "Ball0")
        button.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
     
        
    }
}

