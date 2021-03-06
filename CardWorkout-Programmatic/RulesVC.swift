//
//  RulesVC.swift
//  CardWorkout-Programmatic
//
//  Created by Alexey Yarov on 25/10/2021.
//  Copyright © 2021 Alexey Yarov. All rights reserved.
//

import UIKit

class RulesVC: UIViewController {

    let titleLabel      = UILabel()
    let rulesLabel      = UILabel()
    let exersiseLabel   = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
    }
    
    func configureTitleLabel(){
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }

    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you do. \n\nJ = 11, Q = 12, K = 13, A = 14, Joker = 15"
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureExerciseLabel() {
        view.addSubview(exersiseLabel)
       exersiseLabel.translatesAutoresizingMaskIntoConstraints = false
       exersiseLabel.text = "♠ = Crypto\n\n♥ = Dating\n\n♦ = E-com\n\n♣ = Game App"
       exersiseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
       exersiseLabel.lineBreakMode = .byWordWrapping
       exersiseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
           exersiseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
           exersiseLabel.widthAnchor.constraint(equalToConstant: 200),
           exersiseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
