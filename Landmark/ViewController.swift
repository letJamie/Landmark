//
//  ViewController.swift
//  Landmark
//
//  Created by Jamie on 2020/09/14.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        var landmarkNames = [String]()
        landmarkNames.append("colosseum")
        landmarkNames.append("great wall")
        landmarkNames.append("kremlin")
        landmarkNames.append("stonehenge")
        landmarkNames.append("tajmahal")
        
        
        
        
        var landMarkImage = [UIImage]()
        
        landMarkImage.append(UIImage(named: "colosseum")!)
        landMarkImage.append(UIImage(named: "great wall")!)
        landMarkImage.append(UIImage(named: "kremlin")!)
        landMarkImage.append(UIImage(named: "stonehenge")!)
        landMarkImage.append(UIImage(named: "tajmahal")!)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = UITableViewCell()
        cell.textLabel?.text = "test"
          return cell
      }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
  

}

