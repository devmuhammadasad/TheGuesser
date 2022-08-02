import UIKit

class ResultViewController: UIViewController {
    var secretNumber: String?
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = secretNumber
    }
    

}
