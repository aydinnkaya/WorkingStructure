//
//  GameScreen.swift
//  WorkingStructure
//
//  Created by AydınKaya on 18.12.2024.
//

import UIKit

class GameScreen: UIViewController {
    @IBOutlet weak var labelGameScreen: UILabel!
    
    var car: Cars?
    var message : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelGameScreen.text = message
        
        if let c = car {
            print("Cars : \(String(describing: c.name!))")
            print("Cars : \(c.model!)")
            print("Cars : \(String(describing: c.color!))")
            print("Cars : \(String(describing: c.age!))")
        }
        		
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
