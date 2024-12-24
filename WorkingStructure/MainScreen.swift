//
//  ViewController.swift
//  WorkingStructure
//
//  Created by AydınKaya on 18.12.2024.
//

import UIKit

class MainScreen: UIViewController {
    @IBOutlet weak var labelMainScreen: UILabel!
    
    override func viewDidLoad() { // ones
        super.viewDidLoad()
        
        labelMainScreen.text = "Welcome"
        
    }
    
    override func viewWillAppear(_ animated: Bool) { // Screen Each view

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    
        
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
    
    
    @IBAction func buttonSearh(_ sender: Any) {
        
    }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        
    }
    
}

