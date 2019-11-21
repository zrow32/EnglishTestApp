//
//  ViewController.swift
//  EnglishTest
//
//  Created by Stepan Vasilyeu on 11/17/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var testLabel: UILabel!
    @IBOutlet var testButton: UIButton!
    @IBOutlet var aTestButton: UIButton!
    @IBOutlet var bTestButton: UIButton!
    @IBOutlet var cTestButton: UIButton!
    @IBOutlet var dTestButton: UIButton!
    
    private var testEnum = TestEnum.firstQuestion
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    var answerArray: [String] = []
    
    var correctAnswerArray = [
        "B", "C", "D", "C", "A", "B", "D", "B", "D", "C",
        "D", "A", "B", "A", "C", "D", "A", "D", "A", "B",
        "D", "B", "C", "D", "C", "A", "B", "D", "A", "B",
        "C", "C", "D", "C", "D", "C", "A", "A", "B", "B",
        "B", "C", "A", "D", "B", "D", "A", "C", "C", "A",
        "C", "A", "B", "C", "D", "B", "D", "B", "C", "A"
    ]
    
    var resultTestValue = 0

    func resulsTestFunc (answer: [String], correctAnswer: [String]) {
        for i in 0..<answerArray.count {
            if answerArray[i] == correctAnswerArray[i] {resultTestValue += 1}
        }
    }
    
    func buttonIsHidden (hidden: Bool) {
        aTestButton.isHidden = hidden
        bTestButton.isHidden = hidden
        cTestButton.isHidden = hidden
        dTestButton.isHidden = hidden
    }
    
    func qestionsButton (
        aQestionsButton: String,
        bQestionsButton: String,
        cQestionsButton: String,
        dQestionsButton: String
    ) {
        aTestButton.setTitle(aQestionsButton, for: .normal)
        bTestButton.setTitle(bQestionsButton, for: .normal)
        cTestButton.setTitle(cQestionsButton, for: .normal)
        dTestButton.setTitle(dQestionsButton, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testLabel.text = "Are you ready to start testing?"
        testButton.layer.cornerRadius = 10
        
        buttonIsHidden(hidden: true)
    }
    
    @IBAction func testActionButton() {
        testButton.setTitle("Next question", for: .normal)
        
        buttonIsHidden(hidden: false)
        
        aTestButton.alpha = lightIsOff
        bTestButton.alpha = lightIsOff
        cTestButton.alpha = lightIsOff
        dTestButton.alpha = lightIsOff
        
        switch testEnum {
        //1
        case .firstQuestion:
            testLabel.text = "1. How old are you?"
            qestionsButton(
                aQestionsButton: "A. I have 16",
                bQestionsButton: "B. I am 16",
                cQestionsButton: "C. I have 16 years",
                dQestionsButton: "D. I am 16 years"
            )
            testEnum = .secondQuestion
        //2
        case .secondQuestion:
            testLabel.text = "2. Are you having a nice time?"
            qestionsButton(
                aQestionsButton: "A. Yes, I’m nice",
                bQestionsButton: "B. Yes, I’m having it",
                cQestionsButton: "C. Yes, I am",
                dQestionsButton: "D. Yes, it is"
            )
            testEnum = .thirdQuestion
        //3
        case .thirdQuestion:
            testLabel.text = "3. Could you pass the salt please?"
            qestionsButton(
                aQestionsButton: "A. Over there",
                bQestionsButton: "B. I don’t know",
                cQestionsButton: "C. Help yourself",
                dQestionsButton: "D. Here you are"
            )
            testEnum = .fourthQuestion
        //4
        case .fourthQuestion:
            testLabel.text = "4. Yesterday I went __________ bus to the National Museum."
            qestionsButton(
                aQestionsButton: "A. on",
                bQestionsButton: "B. in",
                cQestionsButton: "C. by",
                dQestionsButton: "D. with"
            )
            testEnum = .fifthQuestion
        //5
        case .fifthQuestion:
            testLabel.text = "5. Sue and Mike __________ to go camping"
            qestionsButton(
                aQestionsButton: "A. wanted",
                bQestionsButton: "B. said",
                cQestionsButton: "C. made",
                dQestionsButton: "D. talked"
            )
            testEnum = .final
        case .final:
            testLabel.text = "\(answerArray)"
            testButton.setTitle("Start test!", for: .normal) 
            buttonIsHidden(hidden: true)
            testEnum = .firstQuestion

        }
    }
    
    func testIsOnOrOff (aButton: Bool, bButton: Bool, cButton: Bool, dButton: Bool) {
        aButton == true ? (aTestButton.alpha = lightIsOn) : (aTestButton.alpha = lightIsOff)
        if aButton == true {answerArray.append("A")}
        bButton == true ? (bTestButton.alpha = lightIsOn) : (bTestButton.alpha = lightIsOff)
        if bButton == true {answerArray.append("B")}
        cButton == true ? (cTestButton.alpha = lightIsOn) : (cTestButton.alpha = lightIsOff)
        if cButton == true {answerArray.append("C")}
        dButton == true ? (dTestButton.alpha = lightIsOn) : (dTestButton.alpha = lightIsOff)
        if dButton == true {answerArray.append("D")}
    }
    
    @IBAction func firstTestButton() {
        testIsOnOrOff(aButton: true, bButton: false, cButton: false, dButton: false)
    }
    @IBAction func secondTestButton() {
        testIsOnOrOff(aButton: false, bButton: true, cButton: false, dButton: false)
    }
    @IBAction func thirdTestButton() {
        testIsOnOrOff(aButton: false, bButton: false, cButton: true, dButton: false)
    }
    @IBAction func fourthTestButton() {
        testIsOnOrOff(aButton: false, bButton: false, cButton: false, dButton: true)
    }
    
//    qestionsButton(
//        aQestionsButton: "A.",
//        bQestionsButton: "B.",
//        cQestionsButton: "C.",
//        dQestionsButton: "D."
//    )
    
}
