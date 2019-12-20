//
//  SettingsViewController.swift
//  Planets
//
//  Created by Aaron Cleveland on 12/19/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeShouldShowPluto(_ sender: Any) {
        let shouldShowPluto = shouldShowPlutoSwitch.isOn
        
        UserDefaults.standard.set(shouldShowPluto, forKey: "ShouldShowPluto")
    }
    
    func updateViews() {
        let shouldShowPluto = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
        
        shouldShowPlutoSwitch.isOn = shouldShowPluto
    }
}

extension String {
    static var shouldShowPlutoKey = "ShouldShowPluto"
}
