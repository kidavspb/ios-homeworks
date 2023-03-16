//
//  PostViewController.swift
//  Navigation
//
//  Created by Вадим Дмитриев on 11.03.2023.
//

import UIKit

class PostViewController: UIViewController {
    var postTitle: Post?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Пост"
//        title = postTitle?.title
        view.backgroundColor = .systemRed
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
    }
    
    @objc func addTapped() {
        let infoViewController = InfoViewController()
        
        infoViewController.modalTransitionStyle = .partialCurl
        infoViewController.modalPresentationStyle = .fullScreen
        
        present(infoViewController, animated: true)
    }
    
}
