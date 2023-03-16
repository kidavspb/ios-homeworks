//
//  FeedViewController.swift
//  Navigation
//
//  Created by Вадим Дмитриев on 12.03.2023.
//

import UIKit

struct Post {
    var title: String
}

class FeedViewController: UIViewController {

    private lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Перейти", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Лента"
        view.backgroundColor = .systemBackground
        
        view.addSubview(actionButton)
        
        let safeAreaLayoutGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            actionButton.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor,
                constant: 20.0
            ),
            actionButton.centerYAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor,
                constant: 20.0
            ),
        ])
        
        actionButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        let postObject = Post(title: "Шок")
        let postViewController = PostViewController()
        postViewController.postTitle = postObject
        
        postViewController.modalTransitionStyle = .flipHorizontal
        postViewController.modalPresentationStyle = .fullScreen
        
        present(postViewController, animated: true)
    }


}
