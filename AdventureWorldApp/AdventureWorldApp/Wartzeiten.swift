//
//  Wartzeiten.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 14.01.17.
//  Copyright © 2017 Deborah Gäb. All rights reserved.
//

import UIKit

class Wartzeiten: UITableViewController {
   
    @IBOutlet weak var wartezeittableView: UITableView!
   
    var attraktionenAlsDataSource: [(nummer: Int, name: String, thematisierung: Int, ausgewaehlt: Bool)] = [(nummer: 1, name: "Information", thematisierung: 1, ausgewaehlt: false), (nummer: 2, name: "Das verrückte Hotel Tatütata" ,thematisierung: 1 , ausgewaehlt: false), (nummer: 3, name: "Restaurant am Brunnen" ,thematisierung: 1, ausgewaehlt: false), (nummer: 4, name: "Mäuse jagt" ,thematisierung: 1, ausgewaehlt: false),(nummer: 5, name: "Variété de Marie" ,thematisierung: 1, ausgewaehlt: false), (nummer: 6, name: "Historisches PferdchenKarusel" ,thematisierung: 1, ausgewaehlt: false), (nummer: 7, name: "Geisterflug" ,thematisierung: 2, ausgewaehlt: false), (nummer: 8, name: "Spooky Castel" ,thematisierung: 2, ausgewaehlt: false), (nummer: 9, name: "Dämonensride" ,thematisierung: 2, ausgewaehlt: false), (nummer: 10, name: "Xiuhcoatl" ,thematisierung: 3, ausgewaehlt: false), (nummer: 11, name: "Arizonas Express" ,thematisierung: 3, ausgewaehlt: false), (nummer: 12, name: "Restaurant à la Plaza" ,thematisierung: 3, ausgewaehlt: false), (nummer: 13, name: "Indianer" ,thematisierung: 4, ausgewaehlt: false), (nummer: 14, name: "magische Flugräder" ,thematisierung: 4, ausgewaehlt: false), (nummer: 15, name: "Hüpfende Frösche" ,thematisierung: 4, ausgewaehlt: false), (nummer: 16, name: "PapageienFlug" ,thematisierung: 4, ausgewaehlt: false), (nummer: 17, name: "Wurm Express" ,thematisierung: 5, ausgewaehlt: false), (nummer: 18, name: "Raketen Flug" ,thematisierung: 2, ausgewaehlt: false), (nummer: 19, name: "Imbiss Spooky", thematisierung: 2, ausgewaehlt: false), (nummer: 20, name: "Imbiss bei Elfen und Feen" ,thematisierung: 4, ausgewaehlt: false), (nummer: 21, name: "Eingang Mainstreet", thematisierung: 2, ausgewaehlt: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let zelle = UITableViewCell()
        let attraktionen = attraktionenAlsDataSource[indexPath.row]
        zelle.textLabel?.text = attraktionen.name
        return zelle
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return attraktionenAlsDataSource.count
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attraktionenAlsDataSource.count
    }
}
