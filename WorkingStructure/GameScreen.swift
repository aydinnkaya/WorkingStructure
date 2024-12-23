//
//  GameScreen.swift
//  WorkingStructure
//
//  Created by AydınKaya on 18.12.2024.
//

import UIKit

class GameScreen: UIViewController {
    @IBOutlet weak var labelGameScreen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        		
    }
    
    @IBAction func buttonBack(_ sender: Any) {
      //  navigationController?.popViewController(animated: true)
          // Back Screen trasntition
        navigationController?.popToRootViewController(animated: true) // main screen trasntition
        
    }
    
   
    @IBAction func buttonFinish(_ sender: Any) {
        
        performSegue(withIdentifier: "transitionResultScreen", sender: nil)
        
    }
    

    

}
