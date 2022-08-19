//
//  ViewController6.swift
//  ChillChatApp2
//
//  Created by Scholar on 8/17/22.
//

import UIKit

class ViewController6: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    
    @IBAction func wellButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://nycwell.cityofnewyork.us/en/")! as URL, options: [:], completionHandler: nil)
        
    }
    
 
    @IBAction func TrevorURL(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.thetrevorproject.org/donate/?gclid=Cj0KCQjwxveXBhDDARIsAI0Q0x1g9fLBJf7u2ugKp_CdxrTbRewqhsguwKwSFjfl_EZKiAO848Y641AaAkNkEALw_wcB")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func mhaURL(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://mhanys.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func AADAURL(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://adaa.org/about-adaa")! as URL, options: [:], completionHandler: nil)

    }
    
    
    @IBAction func healthGovURL(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.mentalhealth.gov/")! as URL, options: [:], completionHandler: nil)
    }
    


//    func openUrl(urlStr:String!) {
//
//         if let url = NSURL(string:urlStr) {
//             UIApplication.shared.openURL(url as URL)
//         }
//
//    }
    

}
