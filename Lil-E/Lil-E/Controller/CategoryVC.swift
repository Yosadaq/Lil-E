//
//  ViewController.swift
//  Lil-E
//
//  Created by Yosadaq Esparza on 1/31/18.
//  Copyright © 2018 Y.M. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

     @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
        let category = DataService.instance.getCategories()[indexPath.row]
        cell.updateViews(category: category)
            return cell
    } else {
            
    return CategoryCell()
            
    }
  }
}
