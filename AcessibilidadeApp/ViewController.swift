import UIKit

final class ViewController: UIViewController {
    private var viewScreen = ViewScreen()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = viewScreen
        setupAccesbility()
    }

    override func loadView() {
        viewScreen.delegate = self
    }

    private func setupAccesbility() {
        setupReadAccesbility()
        setupLabelAcessibility()
        setupTraitsAcessibility()
    }

    private func setupReadAccesbility() {
        viewScreen.titleLabel.isAccessibilityElement = true
        viewScreen.positionOneLabel.isAccessibilityElement = true
        viewScreen.positionTwoLabel.isAccessibilityElement = true
        viewScreen.positionThreeLabel.isAccessibilityElement = true
        viewScreen.positionFourLabel.isAccessibilityElement = true
        viewScreen.positionFiveLabel.isAccessibilityElement = true
        viewScreen.loginButton.isAccessibilityElement = true
        viewScreen.personImageView.isAccessibilityElement = true
    }

    private func setupLabelAcessibility() {
        viewScreen.positionOneLabel.accessibilityLabel = "Posição um"
        viewScreen.positionTwoLabel.accessibilityLabel = "Posição dois"
        viewScreen.positionThreeLabel.accessibilityLabel = "Posição tres"
        viewScreen.positionFourLabel.accessibilityLabel = "Posição quatro"
        viewScreen.positionFiveLabel.accessibilityLabel = "Posição cinco"
        viewScreen.personImageView.accessibilityLabel = "Imagem de um icone de pessoa"
    }

    private func setupTraitsAcessibility() {
        viewScreen.positionOneLabel.accessibilityTraits = .staticText
        viewScreen.positionTwoLabel.accessibilityTraits = .staticText
        viewScreen.positionThreeLabel.accessibilityTraits = .staticText
        viewScreen.positionFourLabel.accessibilityTraits = .staticText
        viewScreen.positionFiveLabel.accessibilityTraits = .staticText
        viewScreen.loginButton.accessibilityTraits = .button
        viewScreen.titleLabel.accessibilityTraits = .header
        viewScreen.personImageView.accessibilityTraits = .image
    }

}

extension ViewController: ViewScreenDelegate {
    func tappedLoginButton() {
        DispatchQueue.main.async {
            UIAccessibility.post(notification: .screenChanged, argument: "Teste o Botao foi pressionado")
        }
    }

}
