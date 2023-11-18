import UIKit

final class ViewController: UIViewController {
    
    private var viewScreen = ViewScreen()


    override func viewDidLoad() {
        super.viewDidLoad()

        viewScreen = ViewScreen()
        view = viewScreen
    }

    override func loadViewIfNeeded() {
        super.loadView()

    }

}

