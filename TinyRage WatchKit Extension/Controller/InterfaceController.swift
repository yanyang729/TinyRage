//
//  InterfaceController.swift
//  TinyRage WatchKit Extension
//
//  Created by Daniil Popov on 11/9/19.
//  Copyright © 2019 Daniil Popov. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var highestScorekey: String = "TinyRageHighestScore";
    
    @IBOutlet weak var highestScoreLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context);
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        let defaults = UserDefaults.standard;
        let highestScore = defaults.integer(forKey: self.highestScorekey);
        
        highestScoreLabel.setText("Highest score: \(highestScore)");
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
