//
//  ViewController.swift
//  locationMap
//
//  Created by Нурсат Шохатбек on 30.12.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var additionLabel: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    var attraction = Attractions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.text = attraction.attraction
        
        infoLabel.text = attraction.info
        
        additionLabel.text = attraction.addition
        
        imageView.image = UIImage(named: attraction.picture)
    }
   
    @IBAction func showMap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let detailMapVc = storyboard.instantiateViewController(withIdentifier: "FullMapVC") as! mapViewController
        
        detailMapVc.mapLocations = attraction
        
        navigationController?.show(detailMapVc, sender: button)
    }
    
}

