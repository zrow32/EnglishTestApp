//
//  ViewController.swift
//  EnglishTest
//
//  Created by Stepan Vasilyeu on 11/17/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class TestEnglishLevelViewController: UIViewController {

    @IBOutlet var testLabel: UILabel!
    @IBOutlet var testButton: UIButton!
    @IBOutlet var aTestButton: UIButton!
    @IBOutlet var bTestButton: UIButton!
    @IBOutlet var cTestButton: UIButton!
    @IBOutlet var dTestButton: UIButton!
    @IBOutlet var cancelTestButton: UIButton!
    
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
    
    func testResultAnswer (resultValue: Int) {
        switch resultValue {
        case  1...15:
            testLabel.text = "Elementary Language Practice"
        case 16...30:
            testLabel.text = "Intermediate Language Practice"
        case 31...45:
            testLabel.text = "First Certificate Language Practice"
        case 46...60:
            testLabel.text = "Advanced Language Practice"
        default:
            testLabel.text = "Zero"
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
        //1 Question
        case .firstQuestion:
            testLabel.text = "1. How old are you?"
            qestionsButton(
                aQestionsButton: "A. I have 16",
                bQestionsButton: "B. I am 16",
                cQestionsButton: "C. I have 16 years",
                dQestionsButton: "D. I am 16 years"
            )
            testEnum = .secondQuestion
        //2 Question
        case .secondQuestion:
            testLabel.text = "2. Are you having a nice time?"
            qestionsButton(
                aQestionsButton: "A. Yes, I’m nice",
                bQestionsButton: "B. Yes, I’m having it",
                cQestionsButton: "C. Yes, I am",
                dQestionsButton: "D. Yes, it is"
            )
            testEnum = .thirdQuestion
        //3 Question
        case .thirdQuestion:
            testLabel.text = "3. Could you pass the salt please?"
            qestionsButton(
                aQestionsButton: "A. Over there",
                bQestionsButton: "B. I don’t know",
                cQestionsButton: "C. Help yourself",
                dQestionsButton: "D. Here you are"
            )
            testEnum = .fourthQuestion
        //4 Question
        case .fourthQuestion:
            testLabel.text = "4. Yesterday I went __________ bus to the National Museum."
            qestionsButton(
                aQestionsButton: "A. on",
                bQestionsButton: "B. in",
                cQestionsButton: "C. by",
                dQestionsButton: "D. with"
            )
            testEnum = .fifthQuestion
        //5 Question
        case .fifthQuestion:
            testLabel.text = "5. Sue and Mike __________ to go camping"
            qestionsButton(
                aQestionsButton: "A. wanted",
                bQestionsButton: "B. said",
                cQestionsButton: "C. made",
                dQestionsButton: "D. talked"
            )
            testEnum = .sixthQuestion
        //6 Question
        case .sixthQuestion:
            testLabel.text = "6. Who’s calling, please?"
            qestionsButton(
                aQestionsButton: "A. Just a moment",
                bQestionsButton: "B. It’s David Parker",
                cQestionsButton: "C. I’ll call you back",
                dQestionsButton: "D. Speaking"
            )
            testEnum = .seventhQuestion
        //7 Question
        case .seventhQuestion:
            testLabel.text = "7. They were __________ after the long journey, so they went to bed."
            qestionsButton(
                aQestionsButton: "A. hungry",
                bQestionsButton: "B. hot",
                cQestionsButton: "C. lazy",
                dQestionsButton: "D. tired"
            )
            testEnum = .eighthQuestion
        //8 Question
        case .eighthQuestion:
            testLabel.text = "8. Can you tell me the __________ to the bus station?"
            qestionsButton(
                aQestionsButton: "A. road",
                bQestionsButton: "B. way",
                cQestionsButton: "C. direction",
                dQestionsButton: "D. street"
            )
            testEnum = .ninthQuestion
        //9 Question
        case .ninthQuestion:
            testLabel.text = "9. __________ you remember to buy some milk?"
            qestionsButton(
                aQestionsButton: "A. Have",
                bQestionsButton: "B. Do",
                cQestionsButton: "C. Should",
                dQestionsButton: "D. Did"
            )
            testEnum = .tenthQuestion
        //10 Question
        case .tenthQuestion:
            testLabel.text = "10. - Don’t forget to put the rubbish out. - I’ve __________ done it!"
            qestionsButton(
                aQestionsButton: "A. yet",
                bQestionsButton: "B. still",
                cQestionsButton: "C. already",
                dQestionsButton: "D. even"
            )
            testEnum = .eleventhQuestion
        //11 Question
        case .eleventhQuestion:
            testLabel.text = "11. You don’t need to bring __________ to eat."
            qestionsButton(
                aQestionsButton: "A. some",
                bQestionsButton: "B. a food",
                cQestionsButton: "C. many",
                dQestionsButton: "D. anything"
            )
            testEnum = .twelfthQuestion
        //12 Question
        case .twelfthQuestion:
            testLabel.text = "12. What about going to the cinema?"
            qestionsButton(
                aQestionsButton: "A. Good idea!",
                bQestionsButton: "B. Twice a month.",
                cQestionsButton: "C. It’s Star Wars.",
                dQestionsButton: "D. I think so."
            )
            testEnum = .thirteenthQuestion
        //13 Question
        case .thirteenthQuestion:
            testLabel.text = "13. - What would you like, Sue? - I’d like the same __________ Michael please."
            qestionsButton(
                aQestionsButton: "A. that",
                bQestionsButton: "B. as",
                cQestionsButton: "C. for",
                dQestionsButton: "D. had"
            )
            testEnum = .fourteenthQuestion
        //14 Question
        case .fourteenthQuestion:
            testLabel.text = "14. __________ people know the answer to that question."
            qestionsButton(
                aQestionsButton: "A. Few",
                bQestionsButton: "B. Little",
                cQestionsButton: "C. Least",
                dQestionsButton: "D. A little"
            )
            testEnum = .fifteenthQuestion
        //15 Question
        case .fifteenthQuestion:
            testLabel.text = "15. It’s not __________ to walk home by yourself in the dark."
            qestionsButton(
                aQestionsButton: "A. sure",
                bQestionsButton: "B. certain",
                cQestionsButton: "C. safe",
                dQestionsButton: "D. problem"
            )
            testEnum = .sixteenthQuestion
        //16 Question
        case .sixteenthQuestion:
            testLabel.text = "16. __________ sure all the windows are locked."
            qestionsButton(
                aQestionsButton: "A. Take",
                bQestionsButton: "B. Have",
                cQestionsButton: "C. Wait",
                dQestionsButton: "D. Make"
            )
            testEnum = .seventeenthQuestion
        //17 Question
        case .seventeenthQuestion:
            testLabel.text = "17. I’ll go and __________ if I can find him."
            qestionsButton(
                aQestionsButton: "A. see",
                bQestionsButton: "B. look",
                cQestionsButton: "C. try",
                dQestionsButton: "D. tell"
            )
            testEnum = .eighteenthQuestion
        //18 Question
        case .eighteenthQuestion:
            testLabel.text = "18. What’s the difference __________ football and rugby?"
            qestionsButton(
                aQestionsButton: "A. from",
                bQestionsButton: "B. with",
                cQestionsButton: "C. for",
                dQestionsButton: "D. between"
            )
            testEnum = .nineteenthQuestion
        //19 Question
        case .nineteenthQuestion:
            testLabel.text = "19. My car needs __________ ."
            qestionsButton(
                aQestionsButton: "A. repairing",
                bQestionsButton: "B. to repair",
                cQestionsButton: "C. to be repair",
                dQestionsButton: "D. repair"
            )
            testEnum = .twentiethQuestion
        //20 Question
        case .twentiethQuestion:
            testLabel.text = "20. Tim was too __________ to ask Monika for a dance."
            qestionsButton(
                aQestionsButton: "A. worried",
                bQestionsButton: "B. shy",
                cQestionsButton: "C. selfish",
                dQestionsButton: "D. polite"
            )
            testEnum = .final
        // Finish the test
        case .final:
            resulsTestFunc(answer: answerArray, correctAnswer: correctAnswerArray)
            testResultAnswer(resultValue: resultTestValue)
            testButton.setTitle("Finish the test", for: .normal)
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
    
    @IBAction func cancelTestActionButton() {
        dismiss(animated: true)
    }
    
}
