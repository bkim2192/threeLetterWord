//
//  ViewController.swift
//  threeLetterWord
//
//  Created by Brandon Kim on 1/8/19.
//  Copyright © 2019 Brandon Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var letterLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet var labels: [UILabel]!
    
    let letters:[String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var counter = 0
    var currentLetter:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // struct Person {var name:String}
        // let firstPerson = Person(name: "Jasmine")
        //print(firstPerson.name)
        currentLetter = letters[counter]
        letterLabel.text = currentLetter
    }

    @IBAction func whenTapped(_ sender: UITapGestureRecognizer) {
        let selectedPoint = sender.location(in: stackView)
        //print(selectedPoint)
        for label in labels {
//inside "labels" there are 3 labels, so it puts in currentLetter in those labels.
            //print(label)
            if label.frame.contains(selectedPoint){
                label.text = currentLetter
                
            }
        }
    }
    
    

}

