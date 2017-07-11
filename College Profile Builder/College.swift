//
//  College.swift
//  College Profile Builder
//
//  Created by David Kirson on 6/20/17.
//  Copyright © 2017 David Kirson. All rights reserved.
//

import UIKit

class College: NSObject
{
    var name = ""
    var location = ""
    var enrollment = 0
    var image = UIImage(named: "default")
    
    init (Name: String, Location: String, Enrollment: Int, Image: UIImage)
    {
        name = Name
        location = Location
        enrollment = Enrollment
        image = Image
    }
    
}
