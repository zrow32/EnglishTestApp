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
    
    // func buttonIsPressed
    // 4 варианта ответа - 4 кнопки с вариантами - нажатая кнопка передает значение в массив?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testLabel.text = "Are you ready to start testing?"
        testButton.layer.cornerRadius = 10
        
        aTestButton.isHidden = true
        bTestButton.isHidden = true
        cTestButton.isHidden = true
        dTestButton.isHidden = true
    }
    
    @IBAction func testActionButton() {
        testButton.setTitle("Next question", for: .normal)
        
        aTestButton.isHidden = false
        bTestButton.isHidden = false
        cTestButton.isHidden = false
        dTestButton.isHidden = false
        
        aTestButton.alpha = lightIsOff
        bTestButton.alpha = lightIsOff
        cTestButton.alpha = lightIsOff
        dTestButton.alpha = lightIsOff
        
        switch testEnum {
        //1
        case .firstQuestion:
            testLabel.text = "1. How old are you?"
            aTestButton.setTitle("A. I have 16", for: .normal)
            bTestButton.setTitle("B. I am 16", for: .normal)
            cTestButton.setTitle("C. I have 16 years", for: .normal)
            dTestButton.setTitle("D. I am 16 years", for: .normal)
            testEnum = .secondQuestion
            //print(answerArray)
        //2
        case .secondQuestion:
            testLabel.text = "2. Are you having a nice time?"
            aTestButton.setTitle("A. Yes, I’m nice", for: .normal)
            bTestButton.setTitle("B. Yes, I’m having it", for: .normal)
            cTestButton.setTitle("C. Yes, I am", for: .normal)
            dTestButton.setTitle("D. Yes, it is", for: .normal)
            testEnum = .thirdQuestion
            //print(answerArray)
        //3
        case .thirdQuestion:
            testLabel.text = "3. Could you pass the salt please?"
            aTestButton.setTitle("A. Over there", for: .normal)
            bTestButton.setTitle("B. I don’t know", for: .normal)
            cTestButton.setTitle("C. Help yourself", for: .normal)
            dTestButton.setTitle("D. Here you are", for: .normal)
            testEnum = .fourthQuestion
            //print(answerArray)
        //4
        case .fourthQuestion:
            testLabel.text = "4. Yesterday I went __________ bus to the National Museum."
            aTestButton.setTitle("A. on", for: .normal)
            bTestButton.setTitle("B. in", for: .normal)
            cTestButton.setTitle("C. by", for: .normal)
            dTestButton.setTitle("D. with", for: .normal)
            testEnum = .fifthQuestion
            //print(answerArray)
        //5
        case .fifthQuestion:
            testLabel.text = "5. Sue and Mike __________ to go camping"
            aTestButton.setTitle("A. wanted", for: .normal)
            bTestButton.setTitle("B. said", for: .normal)
            cTestButton.setTitle("C. made", for: .normal)
            dTestButton.setTitle("D. talked", for: .normal)
            testEnum = .final
            //print(answerArray)
        case .final:
            testLabel.text = "\(answerArray)"
            testButton.setTitle("Start test!", for: .normal) 
            aTestButton.isHidden = true
            bTestButton.isHidden = true
            cTestButton.isHidden = true
            dTestButton.isHidden = true
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
    
    
    
}
