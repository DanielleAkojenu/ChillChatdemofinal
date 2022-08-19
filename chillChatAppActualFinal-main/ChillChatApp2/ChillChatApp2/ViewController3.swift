//
//  ViewController3.swift
//  ChillChatApp2
//
//  Created by Scholar on 8/17/22.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var displayTextFirstVC: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        displayTextFirstVC.text = InitialData.textPassed
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
