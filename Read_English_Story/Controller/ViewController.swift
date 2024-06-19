//
//  ViewController.swift
//  Read_English_Story
//
//  Created by Alijon Jumayev on 4/13/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageV = UIImageView()
        imageV.image = UIImage(named: "book")
        imageV.translatesAutoresizingMaskIntoConstraints = false
        return imageV
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 30, weight: .bold)
        label.numberOfLines = 10
        label.textAlignment = .center
        return label
    }()
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.24, green: 0.36, blue: 0.44, alpha: 1.00)
        button.layer.cornerRadius = 50
        button.setTitle("Go", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = ""
                var charIndex = 0.0
                let titleText = "If you don’t like to read, you haven’t found the right book."
                for letter in titleText {
                    Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { timer in
                        self.label.text?.append(letter)
                    }
                    charIndex += 1
                }
        
        view.backgroundColor = UIColor(red: 0.17, green: 0.24, blue: 0.31, alpha: 1.00)
        
        button.addTarget(self, action: #selector(setButton), for: .touchUpInside)
        
        [imageView,label,button] .forEach {view.addSubview($0)}
        
        imageView.anchor(top: nil, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 10, bottom: 0, right: 10), size: .init(width: 0, height: 400))
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: imageView.topAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 100),
        ])

        
        label.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: nil, leading: view.leadingAnchor , trailing: view.trailingAnchor, padding: .init(top: 20, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 200))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    @objc private func setButton() {
        let vc = TestViewController()
        navigationController?.pushViewController(vc, animated: true)
    }


}

