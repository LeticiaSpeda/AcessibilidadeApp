import UIKit

final class ViewController: UIViewController {
    
    private var viewScreen = ViewScreen()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = viewScreen
    }

    override func loadView() {
        viewScreen.delegate = self
    }

    func setupAccesbility() {
        viewScreen.positionOneLabel.isAccessibilityElement = true
        viewScreen.positionTwoLabel.isAccessibilityElement = true
        viewScreen.positionThreeLabel.isAccessibilityElement = true
        viewScreen.positionFourLabel.isAccessibilityElement = true
        viewScreen.positionFiveLabel.isAccessibilityElement = true
        viewScreen.loginButton.isAccessibilityElement = true
    }
}

extension ViewController: ViewScreenDelegate {
    func tappedLoginButton() {
        
    }

}
