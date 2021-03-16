//
//  ViewController.swift
//  Counter2
//
//  Created by Martin Foley on 3/15/21.
//  Copyright © 2021 Martin Foley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count: Int = 0 {
        didSet {
            Counterlabel.text = "\(count)"
        }
        
    }
    @IBOutlet var Counterlabel: UILabel!
    
    @IBOutlet var addButton: UIButton!
    
    let minusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Eat scooby snack", for: .normal)
        button.backgroundColor = .brown
        button.tintColor = .white
        button.addTarget(self, action: #selector(minusButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false 
        return button
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView ()
        // Do any additional setup after loading the view.
    }
    
    func setUpView () {
        view.addSubview(minusButton)
        Counterlabel.textAlignment = .center
        Counterlabel.textColor = .black
        Counterlabel.text = "\(count)"
        Counterlabel.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 18)
        Counterlabel.numberOfLines = 0
        
        addButton.setTitle("Add scooby snack", for: .normal)
        addButton.backgroundColor = .brown
        addButton.tintColor = .white
        
        NSLayoutConstraint.activate([
            minusButton.widthAnchor.constraint(equalTo: addButton.widthAnchor),
            minusButton.heightAnchor.constraint(equalTo: addButton.heightAnchor),
            minusButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            minusButton.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 16)
        ])
        
        
    }
    func addButtonTapped(_ sender: UIButton) {
   count += 1
    }
    
    @objc func minusButtonTapped() {
        count -= 1
    }


}
