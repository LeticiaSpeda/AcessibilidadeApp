import UIKit

final class ViewScreen: UIView, ViewCode {

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Acessibilidade"
        label.enableViewCode()
        return label
    }()

    private lazy var positionOneLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.enableViewCode()
        return label
    }()

    private lazy var positionTwoLabel: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.enableViewCode()
        return label
    }()

    private lazy var positionThreeLabel: UILabel = {
        let label = UILabel()
        label.text = "3"
        label.enableViewCode()
        return label
    }()

    private lazy var positionFourLabel: UILabel = {
        let label = UILabel()
        label.text = "4"
        label.enableViewCode()
        return label
    }()

    private lazy var positionFiveLabel: UILabel = {
        let label = UILabel()
        label.text = "5"
        label.enableViewCode()
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) { nil }

    func setupHierarchy() {
        addSubview(titleLabel)
        addSubview(positionOneLabel)
        addSubview(positionTwoLabel)
        addSubview(positionThreeLabel)
        addSubview(positionFourLabel)
        addSubview(positionFiveLabel)

    }

    func setupcontraints() {
        NSLayoutConstraint.activate(
            setupTitleLabelConstraints()
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

    func setupStyle() {
        backgroundColor = .white
    }
}
