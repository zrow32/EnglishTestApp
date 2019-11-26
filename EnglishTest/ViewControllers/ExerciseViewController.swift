//
//  ExerciseViewController.swift
//  EnglishTest
//
//  Created by Stepan Vasilyeu on 11/27/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {

    @IBOutlet var presentSimpleView: UIView!
    @IBOutlet var presentContinuousView: UIView!
    @IBOutlet var presentPerfectView: UIView!
    @IBOutlet var presentPerfectContinuousView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presentSimpleView.layer.cornerRadius = 10
        presentContinuousView.layer.cornerRadius = 10
        presentPerfectView.layer.cornerRadius = 10
        presentPerfectContinuousView.layer.cornerRadius = 10
    }


}
