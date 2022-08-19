//
//  ViewController2.swift
//  ChillChatApp2
//
//  Created by Scholar on 8/17/22.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        inputText.text = ""
    }
    
    @IBAction func changeText(_ sender: UIButton) {
        if let temporary = inputText.text {
            inputText.text = temporary
            InitialData.textPassed = temporary
        }

    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        userName = inputText.text!
//    }


}
