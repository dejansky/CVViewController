//
//  SkillViewController.swift
//  CVViewController
//
//  Created by Dejan Arsenijevic on 2020-05-29.
//  Copyright © 2020 Dejan Arsenijevic. All rights reserved.
//

import UIKit
import Foundation

class SkillViewController: UIViewController {
    
    @IBOutlet weak var animationView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 2) {
            self.animationView.backgroundColor = UIColor.systemPink
        }
        UIView.animate(withDuration: 10, delay: 4, options: .curveEaseOut, animations: {
            self.animationView.alpha = CGFloat(0)
        },completion: nil)
            
        }

    @IBAction func DissMissView(_ sender: UIButton) {
        self.dismiss(animated: true) {
            return
        }
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
