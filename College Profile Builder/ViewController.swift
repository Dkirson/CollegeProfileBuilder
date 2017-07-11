//
//  ViewController.swift
//  College Profile Builder
//
//  Created by David Kirson on 6/20/17.
//  Copyright © 2017 David Kirson. All rights reserved.
//
//  var college = Array<Any>()

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return collegeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let myCell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        myCell.textLabel?.text = collegeArray[indexPath.row].name
        myCell.detailTextLabel?.text = collegeArray[indexPath.row].location
    return myCell

    }

    @IBOutlet weak var myTableView: UITableView!

    var collegeArray: [College] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        collegeArray.append(College(Name: "Harper College", Location: "1200 W Algonquin Rd, Palatine, IL 60067", Enrollment: 16060, Image: #imageLiteral(resourceName: "Harper College")))
        collegeArray.append(College(Name: "Standford University", Location: "450 Serra Mall, Stanford, CA 94305", Enrollment: 16336, Image: #imageLiteral(resourceName: "Standford University")))
        collegeArray.append(College(Name: "University of Illinois", Location: "8609 W Bryn Mawr Ave # 202, Chicago, IL 60631", Enrollment: 44087, Image: #imageLiteral(resourceName: "University of Illinois")))
    }
}


