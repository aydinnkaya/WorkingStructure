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
        
        performSegue(withIdentifier:"transitionGameScreen", sender: nil)
        
    }
    
    

}

