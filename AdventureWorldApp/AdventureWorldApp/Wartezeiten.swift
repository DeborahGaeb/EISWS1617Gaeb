//  Wartezeiten.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 02.11.16.
//  Copyright © 2016 Deborah Gäb. All rights reserved.
//  Fach:Entwicklung interaktiver Systeme
//  Prof: Prof. Dr. K. Fischer und Prof. Dr. G. Hartmann
//  Betreuer: Franz-L. Jaspers
//

/*Die Wartezeiten werden Für die Abgabe im ditten Meilenstein wird dies mit einer Bib aus Cocoa Pods gelöst werden.
 Es wird Information über die verschienen Attraktionen geben.
 */


import Foundation
import UIKit

class Wartezeiten: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var wartezeiteTableView: UITableView!
    
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
    
    func sortieren (){
        for _ in 1...attraktionen.count {
            
        }
    }
    
    
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
        wartezeiteTableView.delegate = self
        wartezeiteTableView.dataSource = self
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
   
    
}
/*Die Wartezeiten werden Für die Abgabe im ditten Meilenstein wird dies mit einer Bib aus Cocoa Pods gelöst werden.
 Es wird Information über die verschienen Attraktionen geben.
 */