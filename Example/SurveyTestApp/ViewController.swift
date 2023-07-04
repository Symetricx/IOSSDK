//
//  ViewController.swift
//  SurveyTestApp
//
//  Created by Yüksel Ağgöz on 4.07.2023.
//

import UIKit
import SymetricxSurveySDK

class ViewController: UIViewController {

    let survey = SymetricxSurvey.init(
        activationCode: "", // fill with valid value
        projectId: 0, // change with valid value
        languageShortCode: "" // fill with valid value
    )

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showSurvey(_ sender: Any) {
        survey.show(surveyId: 0) // change surveyId with valid value
    }

}

