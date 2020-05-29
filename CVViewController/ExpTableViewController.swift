//
//  ExpTableViewController.swift
//  CVViewController
//
//  Created by Dejan Arsenijevic on 2019-12-05.
//  Copyright © 2019 Dejan Arsenijevic. All rights reserved.
//
import UIKit

class ExpTableViewController: UITableViewController {
    
    @IBOutlet weak var expTableView: UITableView!
    
    var data:[[Experiences]] = [[]]
    
    let headerTitles = ["Work","Education"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self as UITableViewDelegate
        tableView.dataSource = self as UITableViewDataSource
        
        tableView.reloadData()
        
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section < headerTitles.count {
            return headerTitles[section]
        }
        
        return nil
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return DataHandler.instance.experiences.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        DataHandler.instance.experiences[section].count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as? ExpTableViewCell{
            let experience:
                Experiences = DataHandler.instance.experiences[indexPath.section][indexPath.row]
            cell.cell_img.image = UIImage(named: experience.image)
            cell.cell_title.text = experience.describtion
            cell.cell_date.text = experience.date
            
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath){
        DataHandler.instance.setSelectedExperienceId(withIndex: indexPath.row, withIndex: indexPath.section)
    }
    
    
}

