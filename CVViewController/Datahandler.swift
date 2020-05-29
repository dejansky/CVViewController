//
//  Datahandler.swift
//  CVViewController
//
//  Created by Dejan Arsenijevic on 2020-05-29.
//  Copyright © 2020 Dejan Arsenijevic. All rights reserved.
//

import Foundation

import Foundation

class DataHandler {
    
    static let instance = DataHandler()
    
    let experiences : [[Experiences]] =
        [[
            Experiences (id:1, image: "\(1)", describtion:"Parttime job", date: "2019-Current"),
            Experiences (id:2,image: "\(2)", describtion: "Parttime job", date: "2018-2019")],
         
         [Experiences (id:3,image:"\(4)", describtion: "University", date: "2017-Current"),
         Experiences (id:4, image: "\(3)", describtion :"High school", date: "2014-2017")
            
        ]]
    
 
    private var selectedExperienceId: Int = 1
    private var section = 0
    
    func getSelectedExperience() -> Experiences?{
        if let experience = experiences[section].first(where:{ $0.id == selectedExperienceId}){
            return experience
        }
        return nil
    }
    
    func setSelectedExperienceId(withIndex indexRow: Int, withIndex indexSection: Int) {
        selectedExperienceId = experiences[indexSection][indexRow].id
        section = indexSection
        
    }
    
}
