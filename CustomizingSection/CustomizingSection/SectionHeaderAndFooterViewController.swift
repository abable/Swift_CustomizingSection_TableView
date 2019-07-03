//
//  SectionHeaderAndFooterViewController.swift
//  CustomizingSection
//
//  Created by Seungjun Lim on 03/07/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//


import UIKit

class SectionHeaderAndFooterViewController: UIViewController {
    
    @IBOutlet weak var listTableView: UITableView!
    
    let list = Region.generateData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


extension SectionHeaderAndFooterViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list[section].countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let target = list[indexPath.section].countries[indexPath.row]
        cell.textLabel?.text = target
        
        return cell
    }
}

extension SectionHeaderAndFooterViewController: UITableViewDelegate {
    
}


