//
//  Route.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 08.12.16.
//  Copyright © 2016 Deborah Gäb. All rights reserved.
//

import UIKit
import Foundation


class Route: UIViewController {
  
    
    var attraktionenAsDataSource: [(nummer: Int, name: String, ausgewaehlt: Bool)] = [ (nummer: 1, name: "Information", ausgewaehlt: false), (nummer: 2, name: "Das verrückte Hotel Tatütat", ausgewaehlt: false), (nummer: 3, name:"Restaurant am Brunnen", ausgewaehlt: false), (nummer: 4, name: "Mäuse jagt", ausgewaehlt: false), (nummer: 5, name:"Variété de Marie", ausgewaehlt: false), (nummer: 6, name: "Historisches Pferdekaruelle", ausgewaehlt: false),(nummer: 7, name:"Geisterflug", ausgewaehlt: false),(nummer: 8, name:"Spooky Castle", ausgewaehlt: false), (nummer: 9, name:"Dämonen Ride", ausgewaehlt: false),(nummer: 10, name:"Xiuhcoatl", ausgewaehlt: false),(nummer: 11, name:"Arizonas Express", ausgewaehlt: false),(nummer: 12, name:"Restaurant a la Plaza", ausgewaehlt: false), (nummer: 13, name:"Indianer", ausgewaehlt: false), (nummer: 14 , name:"magische Flugräder", ausgewaehlt: false),(nummer: 15, name:"Hüpfende Frösche", ausgewaehlt:false),(nummer: 16, name:"Papageinflug", ausgewaehlt: false),(nummer: 17, name:"Wurm Express", ausgewaehlt: false), (nummer: 18, name:"Raketen Flug Delux", ausgewaehlt: false), (nummer: 19 , name:"Imbiss in Spooky", ausgewaehlt: false), (nummer: 20, name:"Imbiss in Bei Elfen und Feen", ausgewaehlt: false),(nummer: 21, name:"Eingang Mainstreet", ausgewaehlt: true), (nummer: 22, name: "Eingang Spooky", ausgewaehlt: true),  (nummer: 23, name: "A", ausgewaehlt: true),(nummer: 24, name: "B", ausgewaehlt: true), (nummer: 25, name: "C", ausgewaehlt: true), (nummer: 26, name: "D", ausgewaehlt: true), (nummer: 27, name: "E", ausgewaehlt: true)]
   
    var alleWege: [(name: String, laenge: Int, attraktion1: Int, attraktion2: Int)] = [(name: "k01", laenge: 5, attraktion1: 21, attraktion2: 1), (name: "k02", laenge: 8, attraktion1: 21, attraktion2: 4), (name: "k03", laenge: 9, attraktion1: 21, attraktion2: 25), (name: "k04", laenge: 7, attraktion1: 1, attraktion2: 23), (name: "k05", laenge: 5, attraktion1: 4, attraktion2: 23), (name: "k06", laenge: 2, attraktion1: 2, attraktion2: 23), (name: "k07", laenge: 8, attraktion1: 2, attraktion2: 23), (name: "k08", laenge: 4, attraktion1: 5, attraktion2: 23), (name: "k09", laenge: 10, attraktion1: 6, attraktion2: 23),(name: "k10", laenge: 8, attraktion1: 5, attraktion2: 6), (name: "k11", laenge: 7, attraktion1: 3, attraktion2: 6), (name: "k12", laenge: 18, attraktion1:23 , attraktion2: 24), (name: "k13", laenge: 12, attraktion1: 6, attraktion2: 24), (name: "k14", laenge: 15, attraktion1: 24, attraktion2: 25), (name: "k15", laenge: 4, attraktion1: 18, attraktion2: 24), (name: "k16", laenge: 12, attraktion1: 24, attraktion2: 25), (name: "k17", laenge: 6, attraktion1: 14, attraktion2: 25), (name: "k18", laenge: 6, attraktion1: 15, attraktion2: 25), (name: "k19", laenge: 7, attraktion1: 16, attraktion2: 25), (name: "k20", laenge: 6, attraktion1: 17, attraktion2: 25), (name: "k21", laenge: 4, attraktion1: 14, attraktion2: 15), (name: "k22", laenge: 7, attraktion1: 14, attraktion2: 16), (name: "k23", laenge: 12, attraktion1: 15, attraktion2: 16), (name: "k24", laenge: 4, attraktion1: 16, attraktion2: 17), (name: "k25", laenge: 14, attraktion1: 25, attraktion2: 26), (name: "k26", laenge: 5, attraktion1: 10, attraktion2: 26), (name: "k27", laenge: 4, attraktion1: 11, attraktion2: 26), (name: "k28", laenge: 6, attraktion1: 12, attraktion2: 26), (name: "k29", laenge: 7, attraktion1: 13, attraktion2: 26), (name: "k30", laenge: 9, attraktion1: 9, attraktion2: 26), (name: "k31", laenge: 12, attraktion1: 27, attraktion2: 26), (name: "k32", laenge: 7, attraktion1: 9, attraktion2: 10), (name: "k33", laenge: 6, attraktion1: 11, attraktion2: 10), (name: "k34", laenge: 4, attraktion1: 12, attraktion2: 11), (name: "k35", laenge: 8, attraktion1: 12, attraktion2: 13), (name: "k36", laenge: 9, attraktion1: 7, attraktion2: 27), (name: "k37", laenge: 10, attraktion1: 8, attraktion2: 27), (name: "k38", laenge: 11, attraktion1: 9, attraktion2: 27), (name: "k39", laenge: 12, attraktion1: 26, attraktion2: 27), (name: "k40", laenge: 13, attraktion1: 23, attraktion2: 27), (name: "k41", laenge: 3, attraktion1: 8, attraktion2: 7), (name: "k42", laenge: 6, attraktion1: 27, attraktion2: 22), (name: "k43", laenge: 3, attraktion1: 8, attraktion2: 22), (name: "k44", laenge: 2, attraktion1: 9, attraktion2: 22), (name: "k45", laenge: 4, attraktion1: 7, attraktion2: 22), (name: "k46", laenge: 5, attraktion1: 20, attraktion2: 25)]
    
    var ausgewaehlteAttraktionen: [(nummer: Int, name: String, ausgewaehlt: Bool)] = []
    var gefilterteWege: [(name: String, laenge: Int, attraktion1: Int, attraktion2: Int)] = []
    var diekurzeStrecke: [(name: String, laenge: Int, attraktion1: Int, attraktion2: Int)] = []
    var meineRoute:[(nummer: Int, name: String, ausgewaehlt: Bool)]  = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //eigendeRouteAlleAttraktionenTableView.delegate = self
        //eigendeRouteAlleAttraktionenTableView.dataSource = self
    }
    
    // Diese Funktion soll den Kürzesten Weg zwischen den Attraktionen bestimmen.
    func routeBerechnen(alleWege: [(name: String, laenge: Int, attraktion1: Int, attraktion2: Int)], attraktionenAsDataSource: [(nummer: Int, name: String, ausgewaehlt: Bool)] ) -> [(name: String, laenge: Int, attraktion1: Int, attraktion2: Int)] {
        
        //Überprüft welche Attraktion ausgewählt wurde
        for i in 1...attraktionenAsDataSource.count {
                if attraktionenAsDataSource[i].ausgewaehlt == true {
                    ausgewaehlteAttraktionen[i] = attraktionenAsDataSource[i]
                }
        }
        
        //Lösche alle Kanten des Graphen die nicht die an einer der NICHT ausgewählten Attraktionen einen Konten haben
        for k in 1...ausgewaehlteAttraktionen.count {
            for l in 1...alleWege.count {
                if ausgewaehlteAttraktionen[k].nummer == alleWege[l].attraktion1 || ausgewaehlteAttraktionen[k].nummer == alleWege[l].attraktion2 {
                    gefilterteWege[l] = alleWege[l]
                }
            }
        }
        /*vergleicht die Wege nach der Länge*/
        if gefilterteWege.attraktion == 20  && gefilterteWege.count != 0 {
            for m in 1...gefilterteWege.count {
                //wenn der Eingang der Attraktion der Eingang der Mainstreet ist.
                if gefilterteWege[m].attraktion1 == 20 || gefilterteWege[m] == 20 {
                    //Dann gehe die gefilterteWege durch und suche den Kürzesten Weg.
                    for n in 1...gefilterteWege.count {
                        //Kurstes Weg ermitteln
                        if gefilterteWege[m].laenge < gefilterteWege[n].laenge {
                            //die kürzste Streckn als neues Array anlegen
                            diekurzeStrecke[m] = gefilterteWege[m]
                            //die kürzste Streckn als neues Array anlegen
                            for o in 1...gefilterteWege.count{
                               if gefilterteWege[m].laenge < gefilterteWege[o].laenge {
                                    gefilterteWege[m] -= gefilterteWege[m]
                                     for p in 1...ausgewaehlteAttraktionen.count {
                                        if diekurzeStrecke[m].attraktion1 == ausgewaehlteAttraktionen[p].name || diekurzeStrecke[m].attraktion2 == ausgewaehlteAttraktionen[p].name{
                                            meineRoute[p] = ausgewaehlteAttraktionen
                                        }
                                    }
                               }
                            }
                        }
                    }
                }
                else if gefilterteWege[m].attraktion1 == 21 || gefilterteWege[m] == 21 {
                    //Dann gehe die gefilterteWege durch und suche den Kürzesten Weg.
                    for n in 1...gefilterteWege.count {
                        //Kurstes Weg ermitteln
                        if gefilterteWege[m].laenge < gefilterteWege[n].laenge {
                            //die kürzste Streckn als neues Array anlegen
                            diekurzeStrecke[m] = gefilterteWege[m]
                            //die kürzste Streckn als neues Array anlegen
                            for o in 1...gefilterteWege.count{
                                if gefilterteWege[m].laenge < gefilterteWege[o].laenge {
                                    gefilterteWege[m] -= gefilterteWege[m]
                                    for p in 1...ausgewaehlteAttraktionen.count {
                                        if diekurzeStrecke[m].attraktion1 == ausgewaehlteAttraktionen[p].name || diekurzeStrecke[m].attraktion2 == ausgewaehlteAttraktionen[p].name{
                                            meineRoute[p] = ausgewaehlteAttraktionen
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        return meineRoute [(nummer: Int, name: String, ausgewaehlt: Bool)]
    }
    
}
}