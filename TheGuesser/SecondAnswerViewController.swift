//
//  SecondAnswerViewController.swift
//  TheGuesser
//
//  Created by SAS on 02/08/2022.
//

import UIKit

class SecondAnswerViewController: UIViewController {
    var firstAnswer: Int?
    var secondAnswer = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.currentTitle == "YES" {
            secondAnswer = 1
        } else {
            secondAnswer = 0
        }
        performSegue(withIdentifier: "SecondAnswerSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondAnswerSegue" {
            let destinationVC = segue.destination as! ThirdAnswerViewController
            destinationVC.firstAnswer = firstAnswer
            destinationVC.secondAnswer = secondAnswer
        }
    }
}
