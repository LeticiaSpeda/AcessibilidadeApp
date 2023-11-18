import UIKit

protocol ViewScreenDelegate: AnyObject {
    func tappedLoginButton()
}

final class ViewScreen: UIView, ViewCode {

    private weak var delegate: ViewScreenDelegate?

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Acessibilidade"
        label.font = .systemFont(ofSize: 30, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private lazy var positionOneLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private lazy var positionTwoLabel: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private lazy var positionThreeLabel: UILabel = {
        let label = UILabel()
        label.text = "3"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private lazy var positionFourLabel: UILabel = {
        let label = UILabel()
        label.text = "4"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private lazy var positionFiveLabel: UILabel = {
        let label = UILabel()
        label.text = "5"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .blue
        button.enableViewCode()
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) { nil }

    @objc func handleLoginButton() {
        delegate?.tappedLoginButton()
    }

    func setupActions() {
        loginButton.addTarget(self, action: #selector(handleLoginButton), for: .touchUpInside)
    }

    func setupHierarchy() {
        addSubview(titleLabel)
        addSubview(positionOneLabel)
        addSubview(positionTwoLabel)
        addSubview(positionThreeLabel)
        addSubview(positionFourLabel)
        addSubview(positionFiveLabel)
        addSubview(loginButton)
    }

    func setupcontraints() {
        NSLayoutConstraint.activate(
            setupTitleLabelConstraints() +
            setupPositionOneLabelConstraints() +
            setupPositionTwoLabelConstraints() +
            setupPositionThreeLabelConstraints() +
            setupPositionFourLabelConstraints() +
            setupPositionFiveLabelConstraints() +
            setupLoginButtonConstraints()
        )
    }

    func setupTitleLabelConstraints() -> [NSLayoutConstraint] {
        [ titleLabel.topAnchor.constraint(
            equalTo: safeAreaLayoutGuide.topAnchor,
            constant: 20
        ),
          titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ]
    }

    func setupPositionOneLabelConstraints() -> [NSLayoutConstraint] {
        [positionOneLabel.topAnchor.constraint(
            equalTo: titleLabel.bottomAnchor,
            constant: 20
        ),
         positionOneLabel.centerXAnchor.constraint(equalTo: centerXAnchor) ]
    }

    func setupPositionTwoLabelConstraints() -> [NSLayoutConstraint] {
        [positionTwoLabel.topAnchor.constraint(
            equalTo: positionOneLabel.bottomAnchor,
            constant: 20
        ),
         positionTwoLabel.centerXAnchor.constraint(equalTo: centerXAnchor) ]
    }


    func setupPositionThreeLabelConstraints() -> [NSLayoutConstraint] {
        [positionThreeLabel.topAnchor.constraint(
            equalTo: positionTwoLabel.bottomAnchor,
            constant: 20
        ),
         positionThreeLabel.centerXAnchor.constraint(equalTo: centerXAnchor) ]
    }


    func setupPositionFourLabelConstraints() -> [NSLayoutConstraint] {
        [positionFourLabel.topAnchor.constraint(
            equalTo: positionThreeLabel.bottomAnchor,
            constant: 20
        ),
         positionFourLabel.centerXAnchor.constraint(equalTo: centerXAnchor) ]
    }


    func setupPositionFiveLabelConstraints() -> [NSLayoutConstraint] {
        [positionFiveLabel.topAnchor.constraint(
            equalTo: positionFourLabel.bottomAnchor,
            constant: 20
        ),
         positionFiveLabel.centerXAnchor.constraint(equalTo: centerXAnchor) ]
    }

    func setupLoginButtonConstraints() -> [NSLayoutConstraint] {
        [loginButton.topAnchor.constraint(
            equalTo: positionFiveLabel.bottomAnchor,
            constant: 20
        ),
         loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
         loginButton.widthAnchor.constraint(equalToConstant: 80)
        ]
    }

    func setupStyle() {
        backgroundColor = .white
    }
}
