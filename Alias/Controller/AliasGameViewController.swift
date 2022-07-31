//
//  AliasGameViewController.swift
//  Alias
//
//  Created by Вячеслав Терентьев on 28.07.2022.
//

import UIKit
class AliasGameViewController: UIViewController {
    
    @IBOutlet var timerLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var wordsLabel: UILabel!
    
    var aliasGameManager: AliasGameManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func correctButtonPressed() {
        SoundManager.shared.playSound(for: .correct)
        aliasGameManager.scoreUp()
        updateUI()
    }
    
    @IBAction func skipButtonPressed() {
        SoundManager.shared.playSound(for: .skip)
        aliasGameManager.scoreDown()
        updateUI()
    }
    
    @IBAction func resetButtonPressed() {
    }
    
    private func updateUI() {
        scoreLabel.text = String(aliasGameManager.score)
        wordsLabel.text = aliasGameManager.getWord()
    }
}
