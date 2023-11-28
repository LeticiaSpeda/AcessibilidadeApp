import UIKit

protocol ViewScreenDelegate: AnyObject {
    func tappedLoginButton()
}

final class ViewScreen: UIView, ViewCode {

    weak var delegate: ViewScreenDelegate?

    private(set) lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Acessibilidade"
        label.textColor = .black
        label.font = .systemFont(ofSize: 30, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private(set) lazy var positionOneLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private(set) lazy var positionTwoLabel: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private(set) lazy var positionThreeLabel: UILabel = {
        let label = UILabel()
        label.text = "3"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private(set) lazy var positionFourLabel: UILabel = {
        let label = UILabel()
        label.text = "4"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private(set) lazy var positionFiveLabel: UILabel = {
        let label = UILabel()
        label.text = "5"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private(set) lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .blue
        button.enableViewCode()
        return button
    }()

    private(set) lazy var personImageView: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "person"))
        image.enableViewCode()
        return image
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

    func setupHierarchy() {
        addSubview(titleLabel)
        addSubview(positionOneLabel)
        addSubview(positionTwoLabel)
        addSubview(positionThreeLabel)
        addSubview(positionFourLabel)
        addSubview(positionFiveLabel)
        addSubview(loginButton)
        addSubview(personImageView)
    }

    func setupcontraints() {
        NSLayoutConstraint.activate(
            setupTitleLabelConstraints() +
            setupPositionOneLabelConstraints() +
            setupPositionTwoLabelConstraints() +
            setupPositionThreeLabelConstraints() +
            setupPositionFourLabelConstraints() +
            setupPositionFiveLabelConstraints() +
            setupLoginButtonConstraints() +
            setupImageViewConstraints()
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
         loginButton.widthAnchor.constraint(equalToConstant: 100),
         loginButton.heightAnchor.constraint(equalToConstant: 40),
        ]
    }

    func setupImageViewConstraints() -> [NSLayoutConstraint] {
        [personImageView.topAnchor.constraint(
            equalTo: loginButton.bottomAnchor,
            constant: 20
        ),
         personImageView.centerXAnchor.constraint(
            equalTo: centerXAnchor
        ),
         personImageView.heightAnchor.constraint(equalToConstant: 120),
         personImageView.widthAnchor.constraint(equalToConstant: 120)

        ]
    }

    func setupActions() {
        loginButton.addTarget(self, action: #selector(handleLoginButton), for: .touchUpInside)
    }

    func setupStyle() {
        backgroundColor = .white
    }
}
