//
//  IndividuelleRoutenPlanung.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 16.01.17.
//  Copyright © 2017 Deborah Gäb. All rights reserved.
//

import UIKit

class IndividuelleRoutenPlanung: UITableViewController {
    var attraktionenAlsDataSource: [(nummer: Int, name: String, thematisierung: Int, ausgewaehlt: Bool)] = [(nummer: 1, name: "Information", thematisierung: 1, ausgewaehlt: false), (nummer: 2, name: "Das verrückte Hotel Tatütata" ,thematisierung: 1 , ausgewaehlt: false), (nummer: 3, name: "Restaurant am Brunnen" ,thematisierung: 1, ausgewaehlt: false), (nummer: 4, name: "Mäuse jagt" ,thematisierung: 1, ausgewaehlt: false),(nummer: 5, name: "Variété de Marie" ,thematisierung: 1, ausgewaehlt: false), (nummer: 6, name: "Historisches PferdchenKarusel" ,thematisierung: 1, ausgewaehlt: false), (nummer: 7, name: "Geisterflug" ,thematisierung: 2, ausgewaehlt: false), (nummer: 8, name: "Spooky Castel" ,thematisierung: 2, ausgewaehlt: false), (nummer: 9, name: "Dämonensride" ,thematisierung: 2, ausgewaehlt: false), (nummer: 10, name: "Xiuhcoatl" ,thematisierung: 3, ausgewaehlt: false), (nummer: 11, name: "Arizonas Express" ,thematisierung: 3, ausgewaehlt: false), (nummer: 12, name: "Restaurant à la Plaza" ,thematisierung: 3, ausgewaehlt: false), (nummer: 13, name: "Indianer" ,thematisierung: 4, ausgewaehlt: false), (nummer: 14, name: "magische Flugräder" ,thematisierung: 4, ausgewaehlt: false), (nummer: 15, name: "Hüpfende Frösche" ,thematisierung: 4, ausgewaehlt: false), (nummer: 16, name: "PapageienFlug" ,thematisierung: 4, ausgewaehlt: false), (nummer: 17, name: "Wurm Express" ,thematisierung: 5, ausgewaehlt: false), (nummer: 18, name: "Raketen Flug" ,thematisierung: 2, ausgewaehlt: false), (nummer: 19, name: "Imbiss Spooky", thematisierung: 2, ausgewaehlt: false), (nummer: 20, name: "Imbiss bei Elfen und Feen" ,thematisierung: 4, ausgewaehlt: false), (nummer: 21, name: "Eingang Mainstreet", thematisierung: 2, ausgewaehlt: false)]
    var ausgewaehlteAttraktionen: [(nummer: Int, name: String, thematisierung: Int, ausgewaehlt: Bool)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //routeberechnen()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return attraktionenAlsDataSource.count
    }
    /*
    func routeberechnen( attraktionenAlsDataSource: [(nummer: Int, name: String, thematisierung: Int, ausgewaehlt: Bool)] ) {
        var attraktionenAlsDataSource = attraktionenAlsDataSource
        var n: Int = 1
        for n in 1...attraktionenAlsDataSource.count {
            if attraktionenAlsDataSource[n].ausgewaehlt == true{
                ausgewaehlteAttraktionen[n] = attraktionenAlsDataSource[n]
            }
    
        var m = 1
        for m in 1...ausgewaehlteAttraktionen.count{
            if ausgewaehlteAttraktionen[m].thematisierung == 1{
                if ausgewaehlteAttraktionen[m].thematisierung.count > 0{
                    print(ausgewaehlteAttraktionen[m])
                }
            }
            if ausgewaehlteAttraktionen[m].thematisierung == 2{
                if ausgewaehlteAttraktionen[m].thematisierung.count > 0{
                    print(ausgewaehlteAttraktionen[m])
                }
            }
            if ausgewaehlteAttraktionen[m].thematisierung == 3{
                if ausgewaehlteAttraktionen[m].thematisierung.count > 0{
                    print(ausgewaehlteAttraktionen[m])
                }
            }
            
            if ausgewaehlteAttraktionen[m].thematisierung == 4{
                if ausgewaehlteAttraktionen[m].thematisierung.count > 0{
                    print(ausgewaehlteAttraktionen[m])
                }
            }
            if ausgewaehlteAttraktionen[m].thematisierung == 5{
                if ausgewaehlteAttraktionen[m].thematisierung.count > 0{
                    print(ausgewaehlteAttraktionen[m])
                }
            }
        }
    } 
        */
    
 
}
