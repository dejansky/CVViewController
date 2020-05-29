//
//  varDatahandler.swift
//  CVViewController
//
//  Created by Dejan Arsenijevic on 2020-05-29.
//  Copyright © 2020 Dejan Arsenijevic. All rights reserved.
//

import Foundation
class Experiences {
    let id: Int
    let image: String
    let describtion: String
    let date: String
    
    init(id: Int, image: String, describtion: String, date: String) {
        self.id = id
        self.image = image
        self.describtion = describtion
        self.date = date
    }
}
