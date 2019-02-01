//
//  DetailViewController.swift
//  FavoriteCities
//
//  Created by zamin ahmed on 1/29/19.
//  Copyright © 2019 zamin ahmed. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   

    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var stateTextField: UITextField!
    
    @IBOutlet weak var populationTextField: UITextField!
    
    @IBOutlet weak var imageview: UIImageView!
    
    var detailItem: City? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let city = self.detailItem {
            if cityTextField != nil {
             cityTextField.text = city.name
             stateTextField.text = city.state
            populationTextField.text = String(city.population)
                imageview.image = UIImage(data:city.image)
                
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let city = self.detailItem{
            city.name = cityTextField.text!
            city.state = stateTextField.text!
            city.population = Int(populationTextField.text!)!
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    

}

