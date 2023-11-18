import UIKit

final class ViewController: UIViewController {
    
    private var viewScreen = ViewScreen()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = viewScreen
    }
}

