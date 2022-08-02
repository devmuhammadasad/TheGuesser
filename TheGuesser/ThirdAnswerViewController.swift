import UIKit

class ThirdAnswerViewController: UIViewController {
    var firstAnswer: Int?
    var secondAnswer: Int?
    var thirdAnswer = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.currentTitle == "YES" {
            thirdAnswer = 1
        } else {
            thirdAnswer = 0
        }
        performSegue(withIdentifier: "ThirdAnswerSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ThirdAnswerSegue" {
            let destinationVC = segue.destination as! ForthAnswerViewController
            destinationVC.firstAnswer = firstAnswer
            destinationVC.secondAnswer = secondAnswer
            destinationVC.thirdAnswer = thirdAnswer
        }
    }
    
}
