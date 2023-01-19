//
//  ViewController.swift
//  SomeApp
//
//  Created by Aidos Mukatayev on 19.01.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    private lazy var button = UIButton(type: .system)
    private lazy var containerView = UIView()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setButton()
        setContainerView()
    }

    // MARK: - Set
    private func setButton() {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Change Container color"
        configuration.baseForegroundColor = .white
        configuration.baseBackgroundColor = .systemRed
        configuration.cornerStyle = .capsule
        button.configuration = configuration
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15),
            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 60)
        ])

    }

    private func setContainerView() {
        containerView.layer.cornerRadius = 20
        containerView.layer.masksToBounds = true
        containerView.backgroundColor = .systemRed
        containerView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -24),
            containerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            containerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }

    // MARK: - Selectors
    @objc
    private func didTapButton(_ sender: UIButton) {
        let vc = UIColorPickerViewController()
        vc.delegate = self
        present(vc, animated: true)
    }
}

// MARK: - UIColorPickerViewControllerDelegate
extension ViewController: UIColorPickerViewControllerDelegate {
    func colorPickerViewController(_ viewController: UIColorPickerViewController, didSelect color: UIColor, continuously: Bool) {
        containerView.backgroundColor = color
    }
}
