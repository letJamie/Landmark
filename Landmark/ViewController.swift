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
    var landmarkNames = [String]()
    var landMarkImage = [UIImage]()
    
    var selectedName = ""
    var selectedImage = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkNames.append("colosseum")
        landmarkNames.append("great wall")
        landmarkNames.append("kremlin")
        landmarkNames.append("stonehenge")
        landmarkNames.append("tajmahal")
        
        landMarkImage.append(UIImage(named: "colosseum.jpg")!)
        landMarkImage.append(UIImage(named: "great wall.jpg")!)
        landMarkImage.append(UIImage(named: "kremlin.jpeg")!)
        landMarkImage.append(UIImage(named: "stonehenge.jpg")!)
        landMarkImage.append(UIImage(named: "tajmahal.jpg")!)
        
        navigationItem.title = "Landmark"
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
          return cell
      }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
                
            landmarkNames.remove(at: indexPath.row)
            landMarkImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedName = landmarkNames[indexPath.row]
        selectedImage = landMarkImage[indexPath.row]
        performSegue(withIdentifier: "toImageVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "toImageVC" {
            
            let secondVC = segue.destination as! SecondViewController

            secondVC.selectedName = selectedName
            secondVC.selectedImage = selectedImage
            
        }
       
        
        
    }

}

