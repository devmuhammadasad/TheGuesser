import UIKit

class ForthAnswerViewController: UIViewController {
    var firstAnswer: Int?
    var secondAnswer: Int?
    var thirdAnswer: Int?
    var forthAnswer = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.currentTitle == "YES" {
            forthAnswer = 1
        } else {
            forthAnswer = 0
        }
        performSegue(withIdentifier: "ForthAnswerSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ForthAnswerSegue" {
            let destinationVC = segue.destination as! FifthAnswerViewController
            destinationVC.firstAnswer = firstAnswer
            destinationVC.secondAnswer = secondAnswer
            destinationVC.thirdAnswer = thirdAnswer
            destinationVC.forthAnswer = forthAnswer
        }
    }
}
