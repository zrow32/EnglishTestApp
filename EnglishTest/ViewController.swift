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
        //2
        case .secondQuestion:
            testLabel.text = "2. Are you having a nice time?"
            aTestButton.setTitle("A. Yes, I’m nice", for: .normal)
            bTestButton.setTitle("B. Yes, I’m having it", for: .normal)
            cTestButton.setTitle("C. Yes, I am", for: .normal)
            dTestButton.setTitle("D. Yes, it is", for: .normal)
            testEnum = .thirdQuestion
        //3
        case .thirdQuestion:
            testLabel.text = "3. Could you pass the salt please?"
            testEnum = .fourthQuestion
        //4
        case .fourthQuestion:
            testLabel.text = "4. Yesterday I went __________ bus to the National Museum."
            testEnum = .fifthQuestion
        //5
        case .fifthQuestion:
            testLabel.text = "5. Sue and Mike __________ to go camping"
            testEnum = .firstQuestion
            // Бесконечный цикл
//
//        default:
//            break
        }
    }
    
    func testIsOnOrOff (aButton: Bool, bButton: Bool, cButton: Bool, dButton: Bool) {
        aButton == true ? (aTestButton.alpha = lightIsOn) : (aTestButton.alpha = lightIsOff)
        bButton == true ? (bTestButton.alpha = lightIsOn) : (bTestButton.alpha = lightIsOff)
        cButton == true ? (cTestButton.alpha = lightIsOn) : (cTestButton.alpha = lightIsOff)
        dButton == true ? (dTestButton.alpha = lightIsOn) : (dTestButton.alpha = lightIsOff)
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
