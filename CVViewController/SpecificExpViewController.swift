//
//  SpecificExpViewController.swift
//  CVViewController
//
//  Created by Dejan Arsenijevic on 2020-05-29.
//  Copyright © 2020 Dejan Arsenijevic. All rights reserved.
//

import UIKit

class SpecificExpViewController: UIViewController {
    
    @IBOutlet weak var experienceImage: UIImageView!
    @IBOutlet weak var experienceDesc: UILabel!
    @IBOutlet weak var experienceDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let experience: Experiences = DataHandler.instance.getSelectedExperience()!
        
        experienceImage.image = UIImage(named: "\(experience.image)")
        experienceDesc.text = experience.describtion
        experienceDate.text = experience.date
        
    }
    
}
