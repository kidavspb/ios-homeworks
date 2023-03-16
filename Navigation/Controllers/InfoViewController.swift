//
//  InfoViewController.swift
//  Navigation
//
//  Created by Вадим Дмитриев on 16.03.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    private lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Вернуться", for: .normal)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        let alertButton = UIButton()
        alertButton.translatesAutoresizingMaskIntoConstraints = false
        alertButton.setTitle("Инфо", for: .normal)
        view.addSubview(alertButton)
        
        let safeAreaLayoutGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            alertButton.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor,
                constant: 20.0
            ),
            alertButton.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: -20.0
            ),
            alertButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            alertButton.heightAnchor.constraint(equalToConstant: 44.0)
        ])
        
        alertButton.addTarget(self, action: #selector(showAlert(_:)), for: .touchUpInside)
    }
    

    @objc func showAlert(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Внимание", message: "Спасибо за внимание", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Отменить", style: .cancel) { _ in
            print("Нажата кнопка 'Отмена'")
        }
                
        let cancelationAction = UIAlertAction(title: "Отменить", style: .cancel) { _ in
            print("Нажата кнопка 'Отменить'")
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(cancelationAction)
        
        present(alertController, animated: true)
    }

}
