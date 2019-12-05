//
//  UIMainViewController.swift
//  CVViewController
//
//  Created by Dejan Arsenijevic on 2019-12-05.
//  Copyright © 2019 Dejan Arsenijevic. All rights reserved.
//

import UIKit

class UIMainViewController: UIViewController {
    
    @IBOutlet weak var full_name: UINavigationItem!
    @IBOutlet weak var profile_pic: UIImageView!
    @IBOutlet weak var phone_nr: UILabel!
    @IBOutlet weak var addr_one: UILabel!
    @IBOutlet weak var addr_two: UILabel!
    
    @IBOutlet weak var personal_m: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        full_name.title = "Dejan Arsenijevic"
        
        //profile_pic.image = UIImage(named: "star") // Not loading image
        
        phone_nr.text = "07294616**"
        
        addr_one.text = "Addr: Norra Boge..."
        addr_two.text = "Addr: ************"
        
        personal_m.text = "Hello ! My names is ..... \n Welcome to my first project"
        
        
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
