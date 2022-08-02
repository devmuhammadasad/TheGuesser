//
//  FirstAnswerViewController.swift
//  TheGuesser
//
//  Created by SAS on 02/08/2022.
//

import UIKit

class FirstAnswerViewController: UIViewController {
    var firstAnswer = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.currentTitle == "YES" {
            firstAnswer = 1
        } else {
            firstAnswer = 0
        }
        performSegue(withIdentifier: "FirstAnswerSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FirstAnswerSegue" {
            let destinationVC = segue.destination as! SecondAnswerViewController
            destinationVC.firstAnswer = firstAnswer
        }
    }
}
