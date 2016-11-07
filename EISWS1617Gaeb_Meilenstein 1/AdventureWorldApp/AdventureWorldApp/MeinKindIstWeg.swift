//
//  MeinKindIstWeg.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 04.11.16.
//  Copyright © 2016 Deborah Gäb. All rights reserved.
//  Fach:Entwicklung interaktiver Systeme
//  Prof: Prof. Dr. K. Fischer und Prof. Dr. G. Hartmann
//  Betreuer: Franz-L. Jaspers
//

import UIKit

class MeinKindIstWeg: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textAnfang1: UILabel!
    @IBOutlet weak var textAnfang2: UILabel!
    @IBOutlet var lableKindesname: UIView!
    @IBOutlet weak var textKindesname: UITextField!
    
    @IBOutlet weak var labelAlter: UILabel!
    @IBOutlet weak var textAlter: UITextField!
    @IBOutlet weak var labelKleidung: UILabel!
    @IBOutlet weak var labelOberteil: UILabel!
    @IBOutlet weak var textOberteil: UITextField!
    @IBOutlet weak var labelHose: UILabel!
    @IBOutlet weak var textHose: UITextField!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var labelMeinName: UILabel!
    @IBOutlet weak var textMeinName: UITextField!
    @IBOutlet weak var labelHandNummer: UILabel!
    @IBOutlet weak var textMeineNummer: UITextField!
    @IBOutlet weak var labelMeinStandpunkt: UILabel!
    @IBAction func switchButtonMeinStandpunktsSenden(sender: AnyObject) {
       /* switch (switchButtonMeinStandpunktsSenden {
        case "nichtSenden":
            print("kein Standpunkt wird gesendet")
        case "senden":
            print("")
        default:
            print("Keine Angabe")
        }*/
    }
    @IBOutlet weak var labelEndText1: UILabel!
    @IBOutlet weak var labelEndText2: UILabel!
    @IBAction func ButtonSenden(sender: AnyObject) {
        //senden()
    }
    
    @IBOutlet weak var labelKindesbild: UITextField!
    
    
    override func viewDidLoad() {
        
        
        textKindesname.delegate = self
        textAlter.delegate = self
        textOberteil.delegate = self
        textHose.delegate = self
        labelKindesbild.delegate = self
        textMeinName.delegate = self
        textMeineNummer.delegate = self
        
        
     }
 
    /*
    func senden() -> true {
        print("Die Nachricht wurde gesendet")
        if textKindesname != 0 && textAlter != 0 && textMeineNummer != 0 {
         return true
        }
        return true
    }
 */
}