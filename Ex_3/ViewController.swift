//
//  ViewController.swift
//  Ex_3
//
//  Created by Елизавета Медведева on 02.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var robotButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetButton.isHidden = false
    }
    
    func play(_ sign: Sign) {
        let computerSign = randomSign()
        robotButton.setTitle(computerSign.emoji, for: .normal)
        
        switch sign {
        case .rock:
            rockButton.isHidden = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = false
        }
        
        resetButton.isHidden = false
        
        let result = sign.getResult(computerSign)
        
        switch result {
        case .win:
            statusLabel.text = "It's a Win!"
            self.view.backgroundColor = UIColor.systemPink
        case .lose:
            statusLabel.text = "It's a Lose!"
            self.view.backgroundColor = UIColor.systemYellow
        case .draw:
            statusLabel.text = "it's a Draw!"
            self.view.backgroundColor = UIColor.systemGray3
        case .start:
            reset()
        }
    }
    
    func reset() {
        
        statusLabel.text = "Rock, Paper, Scissors?"
        self.view.backgroundColor = UIColor.white
        
        rockButton.isHidden = false
        paperButton.isHidden = false
        scissorsButton.isHidden = false
        resetButton.isHidden = true
    }
    
    @IBAction func rockButtonPresed(_ sender: Any) {
        play(.rock)
    }
    
    @IBAction func paperButtonPresed(_ sender: Any) {
        play(.paper)
    }
    
    @IBAction func scissorsButtonPresed(_ sender: Any) {
        play(.scissors)
    }
    
    @IBAction func resetButtonPresed(_ sender: Any) {
        reset()
    }
    
    
    
}

