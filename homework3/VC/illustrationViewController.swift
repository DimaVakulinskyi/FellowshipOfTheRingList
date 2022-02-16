//
//  illustrationViewController.swift
//  homework3
//
//  Created by Дмитро Вакулінський on 03.11.2021.
//

import UIKit

class illustrationViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var Description: UILabel!
    
    var fellowship: Fellowship?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = fellowship?.image
        Description.text = fellowship?.desc
    
    }

}
