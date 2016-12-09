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
    
    var attraktionen:[(nummer: Int, name: String, ausgewaehlt: Bool)] = [(nummer: 1, name: "Information", ausgewaehlt: false), (nummer: 2, name: "Das verrückte Hotel Tatütat", ausgewaehlt: false), (nummer: 3, name:"Restaurant am Brunnen", ausgewaehlt: false), (nummer: 4, name: "Mäuse jagt", ausgewaehlt: false), (nummer: 5, name:"Variété de Marie", ausgewaehlt: false), (nummer: 6, name: "Historisches Pferdekaruelle", ausgewaehlt: false),(nummer: 7, name:"Geisterflug", ausgewaehlt: false),(nummer: 8, name:"Spooky Castle", ausgewaehlt: false), (nummer: 9, name:"", ausgewaehlt: false),(nummer: 10, name:"Xiuhcoatl", ausgewaehlt: false),(nummer: 11, name:"Arizonas Express", ausgewaehlt: false),(nummer: 12, name:"Restaurant a la Plaza", ausgewaehlt: false), (nummer: 13, name:"Indianer", ausgewaehlt: false), (nummer: 14 , name:"magische Flugräder", ausgewaehlt: false),(nummer: 15, name:"Hüpfende Frösche", ausgewaehlt:false),(nummer: 16, name:"Papageinflug", ausgewaehlt: false),(nummer: 17, name:"Wurm Express", ausgewaehlt: false), (nummer: 18, name:"Raketen Flug Delux", ausgewaehlt: false), (nummer: 19 , name:"Imbiss in Spooky", ausgewaehlt: false), (nummer: 20, name:"Imbiss in Bei Elfen und Feen", ausgewaehlt: false)]
    
    
    func sortieren (){
        for _ in 1...attraktionen.count {
            
        }
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attraktionen.count
    }
    
    //Inhalt der Zellen
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let zelle = UITableViewCell()
        let attraktion = attraktionen[indexPath.row]
        zelle.textLabel?.text = attraktion.name
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