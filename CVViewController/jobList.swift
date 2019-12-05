//
//  jobList.swift
//  CVViewController
//
//  Created by Dejan Arsenijevic on 2019-12-05.
//  Copyright © 2019 Dejan Arsenijevic. All rights reserved.
//

import Foundation

class jobList {
    let imageName: String
    let name: String
    var jobs:[Jobs]
    
    // By setting default values here we don't have to set these parameters when creating the object
    init(imageName: String = "default", name: String = "Playlist", jobs: [Jobs] = []) {
        self.imageName = imageName
        self.name = name
        self.jobs = jobs
    }
    
    func setSongs(_ songCount: Int) {
        jobs = []
        // A simpler/easier version of the classic of (var i; i < soncCount; i++)
        for i in 0..<songCount {
            jobs.append(Jobs(title: "Job \(i)"))
        }
    }
}
