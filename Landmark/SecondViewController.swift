//
//  SecondViewController.swift
//  Landmark
//
//  Created by Jamie on 2020/09/16.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedName = ""
    var selectedImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedName
        imageView.image = selectedImage 
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
