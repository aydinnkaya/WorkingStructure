//
//  ResultScreen.swift
//  WorkingStructure
//
//  Created by AydınKaya on 18.12.2024.
//

import UIKit

class ResultScreen: UIViewController {
    @IBOutlet weak var labelResult: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonClose(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
   
    

}
