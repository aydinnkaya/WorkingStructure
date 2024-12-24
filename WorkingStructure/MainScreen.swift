//
//  ViewController.swift
//  WorkingStructure
//
//  Created by AydınKaya on 18.12.2024.
//

import UIKit

class MainScreen: UIViewController {
    @IBOutlet weak var labelMainScreen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelMainScreen.text = "Welcome"
        
    }
    
    @IBAction func buttonDo(_ sender: Any) {
        
        labelMainScreen.text = "Welcome Aydın"
        
    }
    
    @IBAction func buttonStart(_ sender: Any) {
        
        let car = Cars(name: "BMW", model: "M5", age: 2 , color: "Green")
        performSegue(withIdentifier:"transitionGameScreen", sender: car)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "transitionGameScreen" {
            if let data = sender as? Cars {
                let trasntitonVC = segue.destination as? GameScreen
                trasntitonVC?.car = data
              //  trasntitonVC?.message = data.name
            }
        }
    }
}

