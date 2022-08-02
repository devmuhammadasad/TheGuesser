import UIKit

class FifthAnswerViewController: UIViewController {
    var firstAnswer: Int?
    var secondAnswer: Int?
    var thirdAnswer: Int?
    var forthAnswer: Int?
    var fifthAnswer = 0
    var secretNumber = 1
    var secretNumberString = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.currentTitle == "YES" {
            fifthAnswer = 1
        } else {
            fifthAnswer = 0
        }
        secretNumber = 4 + (firstAnswer! * 2) + (secondAnswer! * 1) + (thirdAnswer! * 32) + (forthAnswer! * 16) + (fifthAnswer * 8)
        secretNumberString = String(secretNumber)
        performSegue(withIdentifier: "FifthAnswerSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FifthAnswerSegue" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.secretNumber = secretNumberString
        }
    }
}
