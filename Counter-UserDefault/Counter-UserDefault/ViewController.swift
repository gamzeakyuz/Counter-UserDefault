//
//  ViewController.swift
//  Counter-UserDefault
//
//  Created by Gamze Akyüz on 13.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Counts the number of logins to the application

        let d = UserDefaults.standard
        
        var count = d.integer(forKey: "count")
        
        count = count + 1
        
        d.set(count, forKey: "count")
        
        label.text = "Counter: \(count)"

    }


}

