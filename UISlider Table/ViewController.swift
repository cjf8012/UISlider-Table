//
//  ViewController.swift
//  UISlider Table
//
//  Created by D7703_15 on 2018. 5. 3..
//  Copyright © 2018년 D7703_15. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        //print("slider vlaue = \(Int(mySlider.value))")
        
        //tableView의 값을 reload
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identfier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identfier, for: indexPath)
        
        let tableValue = String(Int(mySlider.value * 100)+indexPath.row)
        cell.textLabel?.text = tableValue
        return cell
    }
}

