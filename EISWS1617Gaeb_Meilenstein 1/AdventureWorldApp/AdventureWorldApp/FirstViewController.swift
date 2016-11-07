//
//  FirstViewController.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 01.11.16.
//  Copyright © 2016 Deborah Gäb. All rights reserved.
//  Fach:Entwicklung interaktiver Systeme 
//  Prof: Prof. Dr. K. Fischer und Prof. Dr. G. Hartmann
//  Betreuer: Franz-L. Jaspers
//


/* Die Farben und die Funktionen sind zur Zeit die Funktionstüchtig und nicht alle Funktionen werden zum ersten Prototype fertig 
 */


import UIKit
import WebKit

class FirstViewController: UIViewController, UIWebViewDelegate{
    /*Für den RP wird dieses Quick und Dirty mit einem Webview gelöst. 
    Für die Abgabe im ditten Meilenstein wird dies mit einer Bib aus Cocoa Pods gelöst werden.
     */
    @IBOutlet weak var webViewNewblog: UIWebView!
    
    override func viewDidLoad() {
      super.viewDidLoad()
        //intialisierung der Webwview
        webViewNewblog.delegate = self;
        webViewNewblog.frame = self.view.frame;
        
        
        
        let url = NSBundle.mainBundle().URLForResource("newsBlog", withExtension: "html")
        let request = NSURLRequest(URL: url!)
        webViewNewblog.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
/*TO Do bis Januar 2017
 Hier Kommen noch Informationen über den Park rein.
 Bilder und in Kleine Texte rein. Der News Blog wird Für die Abgabe im ditten Meilenstein wird dies mit einer Bib 
 aus Cocoa Pods gelöst werden. 
 */
