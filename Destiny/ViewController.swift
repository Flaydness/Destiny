//
//  ViewController.swift
//  Destiny
//
//  Created by Никита Ясеник on 30.01.2023.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    private var backgroundImage = UIImage(named: "background")

    private lazy var backgroundView: UIImageView = {
        let view = UIImageView(image: backgroundImage!)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var mainLabel: UILabel = {
        var label = UILabel()
        label.text = "Story"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = label.font.withSize(30)
        
        return label
    }()
    
    private lazy var bottomButton: UIButton = {
        var buttonBackground = UIBackgroundConfiguration.listPlainCell()
        buttonBackground.image = UIImage(named: "choice1Background")
        
        var buttonConfig = UIButton.Configuration.plain()
        buttonConfig.background = buttonBackground
        buttonConfig.cornerStyle = .capsule
        buttonConfig.title = "First Choice"
        buttonConfig.baseForegroundColor = .black
        
        var button = UIButton(configuration: buttonConfig)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private lazy var upperButton: UIButton = {
        var buttonBackground = UIBackgroundConfiguration.listPlainCell()
        buttonBackground.image = UIImage(named: "choice2Background")
        
        var buttonConfig = UIButton.Configuration.plain()
        buttonConfig.background = buttonBackground
        buttonConfig.cornerStyle = .capsule
        buttonConfig.title = "Second Choice"
        buttonConfig.baseForegroundColor = .black
        
        var button = UIButton(configuration: buttonConfig)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()

    func setupView() {
        
        view.addSubview(backgroundView)
        view.addSubview(bottomButton)
        view.addSubview(upperButton)
        view.addSubview(mainLabel)
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundView.leftAnchor.constraint(equalTo: view.leftAnchor),
            backgroundView.rightAnchor.constraint(equalTo: view.rightAnchor),
            bottomButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            bottomButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            bottomButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
            bottomButton.heightAnchor.constraint(equalToConstant: 70),
            upperButton.bottomAnchor.constraint(equalTo: bottomButton.topAnchor, constant: -20),
            upperButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            upperButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
            upperButton.heightAnchor.constraint(equalToConstant: 70),
            mainLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            mainLabel.bottomAnchor.constraint(equalTo: upperButton.topAnchor, constant: -50)
            
        ])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }


}


struct MyProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> some UIViewController {
            return ViewController()
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
