//
//  SecondViewController.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 01.11.16.
//  Copyright © 2016 Deborah Gäb. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource {

    var attraktionen = [
        "Bei Elfen und Fellen",
        "Papageinflug",
        "Wurm Express",
        "Hüpfende Frösche",
        "Magische Flugräder",
        "Apollo 21",
        "Raketenflug Delux",
        "Main Street",
        "Das verrückte Hotel Tatütat",
        "Mäuse jage",
        "Variété de Marie",
        "Restaurant am Brunnen",
        "Historiisches Pferdekaruell",
        "Spooky",
        "Geisterflug",
        "Spooky Castle",
        "Dämonens Ride",
        "Xiuhcoatl",
        "Indianer",
        "Arizonas Express",
        "Restaurant a la Plaza"
        ]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    //Anzahl
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attraktionen.count
    }
    
    //Inhalt der Zellen
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let zelle = UITableViewCell()
        let attraktion = attraktionen[indexPath.row]
        zelle.textLabel?.text = attraktion
        return zelle
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }

    
}

